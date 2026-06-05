#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import sys
import struct
import datetime
import time

if os.name == "nt":
    os.system("chcp 65001 > nul")

try:
    from smartcard.System import readers
    from smartcard.util import toHexString, toBytes
    from smartcard.Exceptions import NoCardException, CardConnectionException
    from smartcard.CardRequest import CardRequest
    from smartcard.CardType import AnyCardType
    from Crypto.Cipher import DES
except ImportError:
    print("正在安装依赖...")
    os.system(f"{sys.executable} -m pip install pyscard pycryptodome -U")
    from smartcard.System import readers
    from smartcard.util import toHexString, toBytes
    from smartcard.Exceptions import NoCardException, CardConnectionException
    from smartcard.CardRequest import CardRequest
    from smartcard.CardType import AnyCardType
    from Crypto.Cipher import DES

DEFAULT_PIN = "123455"
MASTER_KEY = bytes.fromhex("1E02313233343536")
TERMINAL_ID = bytes.fromhex("000000007396")

SELECT_DDF = [0x00, 0xA4, 0x00, 0x00, 0x02, 0x3F, 0x00]
SELECT_APP = [0x00, 0xA4, 0x04, 0x00, 0x09,
              0xA0, 0x00, 0x00, 0x00, 0x03, 0x86, 0x98, 0x07, 0x01, 0x00]

GET_BALANCE_EP = [0x80, 0x5C, 0x00, 0x02, 0x04]
GET_BALANCE_ED = [0x80, 0x5C, 0x00, 0x01, 0x04]
GET_CHALLENGE  = [0x00, 0x84, 0x00, 0x00, 0x08]
GET_UID_PCSC   = [0xFF, 0xCA, 0x00, 0x00, 0x00]
GET_ATS_PCSC   = [0xFF, 0xCA, 0x01, 0x00, 0x00]

TYPE_LOAD_EP   = 0x02
TYPE_PURCH_EP  = 0x06

conn          = None
card_uid      = "未检测"
balance_str   = "未知"
pin_status    = "未认证"
terminal_seq  = 1
ats_info      = ""
ats_raw_hex   = ""
reader_name   = "未连接"
current_dir   = "3F00"
current_file  = None
selected_reader_index = 0

FILE_SYSTEM = {
    "3F00": {
        "name": "根目录 (MF)",
        "type": "DF",
        "children": {
            "0001": {"name": "REC 记录型EF", "type": "EF", "file_type": "REC"},
            "0005": {"name": "BIN 透明二进制EF", "type": "EF", "file_type": "BIN"},
            "1001": {
                "name": "PBOC金融应用专属目录",
                "type": "DF",
                "children": {
                    "0001": {"name": "PBOC ED 核心应用数据文件", "type": "EF", "file_type": "BIN"},
                    "0002": {"name": "PBOC EF 标准金融交易文件", "type": "EF", "file_type": "BIN"},
                    "0015": {"name": "BIN 发卡原始配置数据", "type": "EF", "file_type": "BIN"},
                    "0016": {"name": "BIN 扩展二进制数据", "type": "EF", "file_type": "BIN"},
                    "0018": {"name": "REC 交易流水记录", "type": "EF", "file_type": "REC"}
                }
            }
        }
    }
}

def des_encrypt(key, data):
    return DES.new(key, DES.MODE_ECB).encrypt(data)

def xor_bytes(a, b):
    return bytes(x ^ y for x, y in zip(a, b))

def pboc_mac(key, data):
    padded = bytearray(data)
    padded.append(0x80)
    while len(padded) % 8 != 0:
        padded.append(0x00)

    result = b'\x00' * 8
    for i in range(0, len(padded), 8):
        block = padded[i:i + 8]
        xored = xor_bytes(result, block)
        result = des_encrypt(key, xored)

    return result[:4]

def int_to_bcd(n, width):
    s = str(n).zfill(width * 2)
    return bytes(int(s[i:i + 2], 16) for i in range(0, len(s), 2))

def now_date_bcd():
    t = datetime.datetime.now()
    return int_to_bcd(t.year, 2) + int_to_bcd(t.month, 1) + int_to_bcd(t.day, 1)

def now_time_bcd():
    t = datetime.datetime.now()
    return int_to_bcd(t.hour, 1) + int_to_bcd(t.minute, 1) + int_to_bcd(t.second, 1)

def derive_load_proc_key(key, random_4, online_seq_2):
    input_data = random_4 + online_seq_2 + b'\x80\x00'
    return des_encrypt(key, input_data)

def derive_purchase_proc_key(key, random_4, offline_seq_2, ts_last2):
    input_data = random_4 + offline_seq_2 + ts_last2
    return des_encrypt(key, input_data)

def parse_ats(ats):
    if not ats or len(ats) < 2:
        return ""

    try:
        idx = 1
        t0 = ats[idx]
        y1 = (t0 >> 4) & 0x0F
        fsci = t0 & 0x0F
        idx += 1

        fsc_map = {0: 16, 1: 24, 2: 32, 3: 40, 4: 48,
                   5: 64, 6: 96, 7: 128, 8: 256}
        parts = [f"FSC={fsc_map.get(fsci, '?')}B"]

        if y1 & 0x01 and idx < len(ats):
            ta1 = ats[idx]
            dr = ta1 & 0x07
            dr_map = {0: '106', 1: '212', 2: '424', 3: '847'}
            parts.append(f"DR={dr_map.get(dr, '?')}kbps")
            idx += 1

        if y1 & 0x02 and idx < len(ats):
            tb1 = ats[idx]
            fwi = (tb1 >> 4) & 0x0F
            sfgi = tb1 & 0x0F
            if fwi <= 14:
                fwt_ms = round(256 * 16 / 13.56e6 * (2 ** fwi) * 1000, 1)
                parts.append(f"FWT={fwt_ms}ms")
            parts.append(f"SFGI={sfgi}")
            idx += 1

        if y1 & 0x04 and idx < len(ats):
            tc1 = ats[idx]
            cid_support = "支持" if tc1 & 0x02 else "不支持"
            nad_support = "支持" if tc1 & 0x01 else "不支持"
            parts.append(f"CID={cid_support}")
            parts.append(f"NAD={nad_support}")
            idx += 1

        if idx < len(ats):
            hist = ats[idx:]
            if len(hist) >= 2:
                cos_ver = f"{hist[0] >> 4}.{hist[0] & 0x0F}"
                vendor_names = {0x90: '复旦微电子(FM)'}
                vendor = vendor_names.get(hist[1], f'0x{hist[1]:02X}')
                parts.append(f"COS={cos_ver}")
                parts.append(f"厂商={vendor}")
            if len(hist) >= 3:
                parts.append(f"保留={hist[2]:02X}")
            if len(hist) >= 11:
                serial = bytes(hist[3:11]).hex()
                parts.append(f"序列号={serial}")

        return " | ".join(parts)
    except Exception:
        return ""

def send_apdu(apdu, silent=False):
    global conn
    if not silent:
        print(f"  → {toHexString(apdu)}")
    try:
        resp, sw1, sw2 = conn.transmit(apdu)
        sw = (sw1 << 8) | sw2
        if not silent:
            if resp:
                print(f"  ← {toHexString(list(resp))} [{sw1:02X}{sw2:02X}]")
            else:
                print(f"  ← (空) [{sw1:02X}{sw2:02X}]")
        return bytes(resp), sw
    except Exception as e:
        if not silent:
            print(f"  ← 通信失败: {e}")
        return b'', 0

def sw_hint(sw):
    hints = {
        0x6982: "安全状态不满足(可能需要先PIN认证)",
        0x6985: "使用条件不满足",
        0x9302: "MAC校验失败(密钥不正确?)",
        0x9401: "余额不足",
        0x6A81: "功能不支持/卡片已锁定",
        0x6A82: "文件未找到",
        0x6983: "认证方式已锁定",
        0x6A88: "密钥未找到",
        0x6700: "长度错误",
        0x6A86: "P1/P2参数错误",
        0x6A83: "记录未找到",
    }
    return hints.get(sw, f"未知错误 [{sw:04X}]")

def select_app():
    send_apdu(SELECT_DDF, silent=True)
    _, sw = send_apdu(SELECT_APP)
    return sw == 0x9000

def select_file(file_id):
    fid_bytes = bytes.fromhex(file_id)
    apdu = [0x00, 0xA4, 0x00, 0x00, len(fid_bytes)] + list(fid_bytes)
    _, sw = send_apdu(apdu, silent=True)
    return sw == 0x9000

def read_binary(offset, length):
    p1 = (offset >> 8) & 0xFF
    p2 = offset & 0xFF
    apdu = [0x00, 0xB0, p1, p2, length]
    resp, sw = send_apdu(apdu)
    if sw == 0x9000:
        return resp
    print(f"  ⚠ {sw_hint(sw)}")
    return None

def read_record(record_num, short_fid=None):
    if short_fid is None:
        if current_file:
            short_fid = int(current_file, 16) & 0x1F
        else:
            short_fid = 0x18
    
    p2 = ((short_fid & 0x1F) << 3) | 0x04
    apdu = [0x00, 0xB2, record_num, p2, 0x00]
    resp, sw = send_apdu(apdu)
    if sw == 0x9000:
        return resp
    return None

def parse_record(data):
    if not data or len(data) < 23:
        return None
    type_names = {
        0x01: '圈存ED', 0x02: '圈存EP', 0x03: '圈提',
        0x04: '取现',   0x05: '消费ED', 0x06: '消费EP',
        0x07: '改透支', 0x09: '复合消费',
    }
    return {
        'seq':       struct.unpack('>H', data[0:2])[0],
        'overdraft': data[2:5].hex(),
        'amount':    struct.unpack('>I', data[5:9])[0],
        'type_id':   data[9],
        'type':      type_names.get(data[9], f'未知({data[9]:#04x})'),
        'terminal':  data[10:16].hex(),
        'date':      data[16:20].hex(),
        'time':      data[20:23].hex(),
    }

def read_balance(purse='EP'):
    cmd = GET_BALANCE_EP if purse == 'EP' else GET_BALANCE_ED
    resp, sw = send_apdu(cmd)
    if sw == 0x9000 and len(resp) >= 4:
        return struct.unpack('>I', resp[:4])[0]
    if sw != 0x9000:
        print(f"  ⚠ {sw_hint(sw)}")
    return None

def update_balance():
    global balance_str
    bal = read_balance()
    if bal is not None:
        balance_str = f"{bal // 100}.{bal % 100:02d}"
    else:
        balance_str = "读取失败"

def verify_pin(pin_str):
    pin_bytes = []
    for i in range(0, len(pin_str), 2):
        pin_bytes.append(int(pin_str[i:i + 2], 16))
    apdu = [0x00, 0x20, 0x00, 0x00, len(pin_bytes)] + pin_bytes
    _, sw = send_apdu(apdu)
    return sw

def do_purchase(amount_cents, key_id=0x01):
    global terminal_seq

    print("\n╭──────────────────────────────────╮")
    print("│        消费初始化                │")
    print("╰──────────────────────────────────╯")

    amount_b = struct.pack('>I', amount_cents)
    init_data = bytes([key_id]) + amount_b + TERMINAL_ID
    init_apdu = [0x80, 0x50, 0x01, 0x02, len(init_data)] + list(init_data) + [0x0F]

    resp, sw = send_apdu(init_apdu)
    if sw != 0x9000:
        print(f"\n✗ 初始化失败")
        print(f"💡 {sw_hint(sw)}")
        return False

    if len(resp) < 15:
        print(f"\n✗ 响应不足(需15字节, 实际{len(resp)}字节)")
        return False

    old_balance  = struct.unpack('>I', resp[0:4])[0]
    offline_seq  = struct.unpack('>H', resp[4:6])[0]
    overdraft    = resp[6:9]
    key_version  = resp[9]
    algo_id      = resp[10]
    random_icc   = resp[11:15]

    print(f"\n  旧余额:   {old_balance:>8} 分")
    print(f"  脱机序号: {offline_seq:>8}")
    print(f"  透支限额: {overdraft.hex():>8}")
    print(f"  密钥版本: {key_version:02X}")
    print(f"  算法标识: {algo_id:02X}")
    print(f"  随机数:   {random_icc.hex()}")

    if old_balance < amount_cents:
        print("\n✗ 余额不足!")
        return False

    ts_bytes = struct.pack('>I', terminal_seq)
    proc_key = derive_purchase_proc_key(
        MASTER_KEY,
        random_icc,
        struct.pack('>H', offline_seq),
        ts_bytes[-2:]
    )
    print(f"\n  过程密钥: {proc_key.hex()}")

    date_bcd = now_date_bcd()
    time_bcd = now_time_bcd()
    mac1_input = (amount_b
                  + bytes([TYPE_PURCH_EP])
                  + TERMINAL_ID
                  + date_bcd
                  + time_bcd)
    mac1 = pboc_mac(proc_key, mac1_input)
    print(f"  MAC1输入: {mac1_input.hex()}")
    print(f"  MAC1:     {mac1.hex().upper()}")

    print("\n╭──────────────────────────────────╮")
    print("│        消费扣款                  │")
    print("╰──────────────────────────────────╯")
    debit_data = ts_bytes + date_bcd + time_bcd + mac1
    debit_apdu = ([0x80, 0x54, 0x01, 0x00, len(debit_data)]
                  + list(debit_data)
                  + [0x08])

    resp2, sw2 = send_apdu(debit_apdu)
    if sw2 != 0x9000:
        print(f"\n✗ 扣款失败")
        print(f"💡 {sw_hint(sw2)}")
        return False

    if len(resp2) < 8:
        print(f"\n✗ 响应不足(需8字节, 实际{len(resp2)}字节)")
        return False

    tac  = resp2[0:4]
    mac2 = resp2[4:8]
    print(f"\n  TAC:  {tac.hex()}")
    print(f"  MAC2: {mac2.hex()}")

    expected_mac2 = pboc_mac(proc_key, amount_b)
    if mac2 == expected_mac2:
        print("\n✓ MAC2验证通过")
    else:
        print(f"\n✗ MAC2验证失败 (期望 {expected_mac2.hex()})")

    terminal_seq += 1

    update_balance()
    new_bal = read_balance()
    if new_bal is not None:
        diff = old_balance - new_bal
        print(f"\n✅ 消费成功! {old_balance} → {new_bal} 分")
        print(f"   扣减{diff}分, 交易金额{amount_cents}分")

    return True

def do_load(amount_cents, key_id=0x01):
    global terminal_seq

    print("\n╭──────────────────────────────────╮")
    print("│        圈存初始化                │")
    print("╰──────────────────────────────────╯")

    amount_b = struct.pack('>I', amount_cents)
    init_data = bytes([key_id]) + amount_b + TERMINAL_ID
    init_apdu = [0x80, 0x50, 0x00, 0x02, len(init_data)] + list(init_data) + [0x0F]

    resp, sw = send_apdu(init_apdu)
    if sw != 0x9000:
        print(f"\n✗ 初始化失败")
        print(f"💡 {sw_hint(sw)}")
        return False

    if len(resp) < 12:
        print(f"\n✗ 响应不足(需12字节, 实际{len(resp)}字节)")
        return False

    old_balance  = struct.unpack('>I', resp[0:4])[0]
    online_seq   = struct.unpack('>H', resp[4:6])[0]
    key_version  = resp[6]
    algo_id      = resp[7]
    random_icc   = resp[8:12]
    card_mac1    = resp[12:16] if len(resp) >= 16 else None

    print(f"\n  旧余额:   {old_balance:>8} 分")
    print(f"  联机序号: {online_seq:>8}")
    print(f"  密钥版本: {key_version:02X}")
    print(f"  算法标识: {algo_id:02X}")
    print(f"  随机数:   {random_icc.hex()}")
    if card_mac1:
        print(f"  卡片MAC1: {card_mac1.hex()}")

    proc_key = derive_load_proc_key(
        MASTER_KEY, random_icc, struct.pack('>H', online_seq)
    )
    print(f"\n  过程密钥: {proc_key.hex()}")

    if card_mac1:
        mac1_verify = pboc_mac(
            proc_key,
            struct.pack('>I', old_balance) + amount_b
            + bytes([TYPE_LOAD_EP]) + TERMINAL_ID
        )
        if card_mac1 == mac1_verify:
            print("✓ 卡片MAC1验证通过")
        else:
            print(f"⚠ MAC1不一致 (期望 {mac1_verify.hex()})")

    date_bcd = now_date_bcd()
    time_bcd = now_time_bcd()
    mac2_input = (amount_b
                  + bytes([TYPE_LOAD_EP])
                  + TERMINAL_ID
                  + date_bcd
                  + time_bcd)
    mac2 = pboc_mac(proc_key, mac2_input)
    print(f"  MAC2输入: {mac2_input.hex()}")
    print(f"  MAC2:     {mac2.hex().upper()}")

    print("\n╭──────────────────────────────────╮")
    print("│        执行圈存                  │")
    print("╰──────────────────────────────────╯")
    credit_data = date_bcd + time_bcd + mac2
    credit_apdu = ([0x80, 0x52, 0x00, 0x00, len(credit_data)]
                   + list(credit_data)
                   + [0x04])

    resp2, sw2 = send_apdu(credit_apdu)
    if sw2 != 0x9000:
        print(f"\n✗ 圈存失败")
        print(f"💡 {sw_hint(sw2)}")
        return False

    tac = resp2[0:4] if len(resp2) >= 4 else b''
    print(f"\n  TAC: {tac.hex()}")

    terminal_seq += 1

    update_balance()
    new_bal = read_balance()
    if new_bal is not None:
        print(f"\n✅ 圈存成功! {old_balance} → {new_bal} 分")
        print(f"   充值{amount_cents}分")

    return True

def print_file_tree():
    print("\n📂 FM1208 文件系统结构")
    print("├─ 📂 3F00 (根目录 MF)")
    print("│  ├─ 📄 0001 (REC 记录型EF)")
    print("│  ├─ 📄 0005 (BIN 透明二进制EF)")
    print("│  └─ 📂 1001 (PBOC金融应用专属目录)")
    print("│     ├─ 📄 0001 (PBOC ED 核心应用数据)")
    print("│     ├─ 📄 0002 (PBOC EF 标准金融交易)")
    print("│     ├─ 📄 0015 (BIN 发卡原始配置)")
    print("│     ├─ 📄 0016 (BIN 扩展二进制数据)")
    print("│     └─ 📄 0018 (REC 交易流水记录)")
    print()

def menu_file_system():
    global current_dir, current_file
    
    while True:
        os.system("cls" if os.name == "nt" else "clear")
        
        print("╔══════════════════════════════════════════════════════════╗")
        print("║                    文件系统浏览                          ║")
        print("╠══════════════════════════════════════════════════════════╣")
        print(f"║  当前目录: {current_dir:<45} ║")
        if current_file:
            print(f"║  当前文件: {current_file:<45} ║")
        print("╚══════════════════════════════════════════════════════════╝")
        
        print_file_tree()
        
        print("  操作选项:")
        print("  1 ─ 进入根目录 (3F00)")
        print("  2 ─ 进入PBOC目录 (3F00/1001)")
        print("  3 ─ 选择文件并读取内容")
        print("  4 ─ 读取当前文件全部内容")
        print("  0 ─ 返回主菜单")
        print("─" * 58)
        
        choice = input("  请选择: ").strip()
        
        if choice == '1':
            if select_file("3F00"):
                current_dir = "3F00"
                current_file = None
                print("\n✅ 已进入根目录")
            else:
                print("\n✗ 无法进入根目录")
            input("\n按回车继续...")
            
        elif choice == '2':
            if select_file("3F00") and select_file("1001"):
                current_dir = "3F00/1001"
                current_file = None
                print("\n✅ 已进入PBOC金融应用目录")
            else:
                print("\n✗ 无法进入PBOC目录")
            input("\n按回车继续...")
            
        elif choice == '3':
            file_id = input("\n  输入文件ID (如 0018): ").strip().upper()
            if len(file_id) != 4:
                print("  ✗ 文件ID必须为4位十六进制")
                input("\n按回车继续...")
                continue
                
            if select_file(file_id):
                current_file = file_id
                print(f"  ✅ 已选择文件 {file_id}")
                
                if file_id in ["0001", "0018"]:
                    print("\n  正在读取记录...")
                    count = 0
                    print(f"\n  {'#':>3} {'内容'}")
                    print("  " + "─" * 50)
                    for i in range(1, 11):
                        rec = read_record(i)
                        if rec is None:
                            break
                        print(f"  {i:>3} {rec.hex()}")
                        count += 1
                    if count == 0:
                        print("  (无记录或权限不足)")
                    else:
                        print(f"\n  共读取到 {count} 条记录")
                        
                else:
                    print("\n  正在读取二进制内容...")
                    data = read_binary(0, 256)
                    if data:
                        print(f"\n  文件大小: {len(data)} 字节")
                        print(f"  内容: {data.hex()}")
                        try:
                            ascii_str = data.decode('ascii', errors='replace')
                            printable = ''.join(c if c.isprintable() else '.' for c in ascii_str)
                            print(f"  ASCII: {printable}")
                        except:
                            pass
                    else:
                        print("  ✗ 无法读取文件内容")
            else:
                print(f"  ✗ 无法选择文件 {file_id}")
                
            input("\n按回车继续...")
            
        elif choice == '4':
            if not current_file:
                print("\n  ✗ 请先选择一个文件")
                input("\n按回车继续...")
                continue
                
            print(f"\n  正在读取文件 {current_file} 的全部内容...")
            
            if current_file in ["0001", "0018"]:
                count = 0
                print(f"\n  {'#':>3} {'内容'}")
                print("  " + "─" * 70)
                for i in range(1, 21):
                    rec = read_record(i)
                    if rec is None:
                        break
                    print(f"  {i:>3} {rec.hex()}")
                    count += 1
                if count == 0:
                    print("  (无记录或权限不足)")
                else:
                    print(f"\n  共读取到 {count} 条记录")
                    
            else:
                offset = 0
                block_size = 256
                all_data = b''
                
                while True:
                    data = read_binary(offset, block_size)
                    if not data or len(data) == 0:
                        break
                    all_data += data
                    if len(data) < block_size:
                        break
                    offset += block_size
                    
                if all_data:
                    print(f"\n  文件总大小: {len(all_data)} 字节")
                    print(f"  完整内容: {all_data.hex()}")
                    try:
                        ascii_str = all_data.decode('ascii', errors='replace')
                        printable = ''.join(c if c.isprintable() else '.' for c in ascii_str)
                        print(f"  ASCII: {printable}")
                    except:
                        pass
                else:
                    print("  ✗ 无法读取文件内容")
                    
            input("\n按回车继续...")
            
        elif choice == '0':
            select_app()
            break
            
        else:
            print("  ✗ 无效选项")
            time.sleep(1)

def menu_pin():
    global pin_status

    print("\n╔════════════════════════════════════╗")
    print("║              PIN认证               ║")
    print("╚════════════════════════════════════╝")

    input_pin = input(f"输入PIN (默认{DEFAULT_PIN}): ").strip() or DEFAULT_PIN

    if len(input_pin) < 4 or len(input_pin) % 2 != 0:
        print("✗ PIN格式错误 (需偶数位十六进制字符)")
        input("按回车继续...")
        return

    select_app()
    sw = verify_pin(input_pin)

    if sw == 0x9000:
        pin_status = "已认证"
        print("\n✅ PIN认证成功")
    else:
        sw1 = (sw >> 8) & 0xFF
        sw2 = sw & 0xFF
        if sw1 == 0x63:
            remain = sw2 & 0x0F
            pin_status = f"失败(剩{remain}次)"
            print(f"\n✗ PIN错误! 剩余尝试次数: {remain}")
            print("⚠ 连续错误会锁卡!")
        else:
            pin_status = f"失败({sw:04X})"
            print(f"\n✗ PIN认证失败: {sw_hint(sw)}")

    update_balance()
    input("\n按回车继续...")

def menu_purchase():
    amount_input = input("\n输入消费金额(元, 默认1.00): ").strip() or "1.00"
    try:
        amount_yuan = float(amount_input)
        amount_cents = int(amount_yuan * 100)
        amount_hex = f"{amount_cents:08X}"
        print(f"✅ 消费金额: {amount_yuan}元 = {amount_cents}分 = 0x{amount_hex}")
    except:
        print("✗ 金额格式错误")
        input("按回车继续...")
        return

    times_input = input("消费次数(1-10, 默认1): ").strip() or "1"
    try:
        times = int(times_input)
        if times < 1 or times > 10:
            raise ValueError
    except:
        print("✗ 请输入1-10之间的数字")
        input("按回车继续...")
        return

    for i in range(1, times + 1):
        print(f"\n{'═' * 40}")
        print(f"  第{i}次消费")
        print(f"{'═' * 40}")
        select_app()
        try:
            do_purchase(amount_cents)
        except RuntimeError as e:
            print(f"✗ 失败: {e}")
            break

    input("\n按回车继续...")

def menu_load():
    amount_input = input("\n输入充值金额(元, 默认1.00): ").strip() or "1.00"
    try:
        amount_yuan = float(amount_input)
        amount_cents = int(amount_yuan * 100)
        amount_hex = f"{amount_cents:08X}"
        print(f"✅ 充值金额: {amount_yuan}元 = {amount_cents}分 = 0x{amount_hex}")
    except:
        print("✗ 金额格式错误")
        input("按回车继续...")
        return

    times_input = input("充值次数(1-10, 默认1): ").strip() or "1"
    try:
        times = int(times_input)
        if times < 1 or times > 10:
            raise ValueError
    except:
        print("✗ 请输入1-10之间的数字")
        input("按回车继续...")
        return

    for i in range(1, times + 1):
        print(f"\n{'═' * 40}")
        print(f"  第{i}次充值")
        print(f"{'═' * 40}")
        select_app()
        try:
            do_load(amount_cents)
        except RuntimeError as e:
            print(f"✗ 失败: {e}")
            break

    input("\n按回车继续...")

def menu_balance():
    select_app()
    update_balance()

    bal = read_balance()
    if bal is not None:
        print(f"\n✅ EP余额: {bal} 分 (¥{bal/100:.2f})")
    else:
        print("\n✗ EP余额读取失败")

    bal_ed = read_balance('ED')
    if bal_ed is not None:
        print(f"   ED余额: {bal_ed} 分 (¥{bal_ed/100:.2f})")
    else:
        print("   ED余额: 需要PIN认证")

    input("\n按回车继续...")

def menu_records():
    select_app()

    print("\n╔══════════════════════════════════════════════════════════╗")
    print("║                      交易明细                            ║")
    print("╠═════╤═══════╤══════════╤══════════╤══════════════╤════════╣")
    print("║  #  │  序号 │ 类型     │ 金额(分) │ 终端         │ 时间   ║")
    print("╠═════╪═══════╪══════════╪══════════╪══════════════╪════════╣")

    count = 0
    for i in range(1, 11):
        rec = read_record(i, short_fid=0x18)
        if rec is None:
            break
        p = parse_record(rec)
        if p:
            print(f"║ {i:>3} │ {p['seq']:>5} │ {p['type']:<8} │ {p['amount']:>8} │ {p['terminal']:<12} │ {p['time']:<6} ║")
            count += 1

    if count == 0:
        print("║                     (无记录或权限不足)                   ║")
    else:
        print("╠═════╧═══════╧══════════╧══════════╧══════════════╧════════╣")
        print(f"║                     共 {count} 条记录                     ║")
    
    print("╚══════════════════════════════════════════════════════════╝")
    input("\n按回车继续...")

def menu_challenge():
    select_app()
    resp, sw = send_apdu([0x00, 0x84, 0x00, 0x00, 0x08])
    if sw == 0x9000 and resp:
        print(f"\n✅ 随机数: {resp.hex()}")
    else:
        print(f"\n✗ 获取随机数失败: {sw_hint(sw)}")

    input("按回车继续...")

def menu_config():
    global MASTER_KEY, terminal_seq

    print("\n╔════════════════════════════════════╗")
    print("║              系统配置               ║")
    print("╠════════════════════════════════════╣")
    print(f"║  密钥:     {MASTER_KEY.hex():<24} ║")
    print(f"║  终端编号: {TERMINAL_ID.hex():<24} ║")
    print(f"║  终端序号: {terminal_seq:<24} ║")
    print("╚════════════════════════════════════╝")
    print()

    key_input = input("输入新密钥(hex, 留空不修改): ").strip()
    if key_input:
        try:
            new_key = bytes.fromhex(key_input.replace(' ', ''))
            if len(new_key) == 8:
                MASTER_KEY = new_key
                print(f"✅ 密钥已更新: {new_key.hex()}")
            else:
                print("✗ 密钥必须为8字节(16个hex字符)")
        except:
            print("✗ 格式错误")

    seq_input = input("输入终端序号(整数, 留空不修改): ").strip()
    if seq_input:
        try:
            terminal_seq = int(seq_input)
            print(f"✅ 序号已更新: {terminal_seq}")
        except:
            print("✗ 格式错误")

    input("\n按回车继续...")

def select_reader():
    """显示并选择可用的PC/SC读卡器"""
    global selected_reader_index, reader_name
    
    print("\n" + "═" * 50)
    print("  检测可用读卡器...")
    print("═" * 50)
    
    try:
        reader_list = readers()
        if not reader_list:
            print("✗ 未检测到任何PC/SC读卡器")
            return False
            
        print(f"✅ 检测到 {len(reader_list)} 个读卡器:")
        for i, reader in enumerate(reader_list):
            print(f"  [{i+1}] {reader}")
            
        if len(reader_list) == 1:
            selected_reader_index = 0
            reader_name = str(reader_list[0])
            print(f"\n✅ 自动选择唯一读卡器: {reader_name}")
            return True
            
        while True:
            choice = input("\n请选择读卡器编号 (1-{}): ".format(len(reader_list))).strip()
            try:
                idx = int(choice) - 1
                if 0 <= idx < len(reader_list):
                    selected_reader_index = idx
                    reader_name = str(reader_list[idx])
                    print(f"\n✅ 已选择读卡器: {reader_name}")
                    return True
                else:
                    print("✗ 编号超出范围")
            except ValueError:
                print("✗ 请输入有效的数字")
                
    except Exception as e:
        print(f"✗ 检测读卡器失败: {e}")
        return False

def get_card_uid():
    """通用方式获取卡片UID，兼容多种读卡器"""
    global conn
    
    # 方法1: 标准PC/SC命令
    try:
        resp, sw = send_apdu(GET_UID_PCSC, silent=True)
        if sw == 0x9000 and resp and len(resp) >= 4:
            return resp.hex()
    except:
        pass
        
    # 方法2: 从ATR中提取
    try:
        atr = conn.getATR()
        if len(atr) >= 8:
            return bytes(atr[:8]).hex()
    except:
        pass
        
    # 方法3: 尝试其他常见命令
    try:
        # 部分读卡器使用这个命令
        resp, sw = send_apdu([0x00, 0xCA, 0x00, 0x00, 0x00], silent=True)
        if sw == 0x9000 and resp and len(resp) >= 4:
            return resp.hex()
    except:
        pass
        
    return "未知"

def get_card_ats():
    """通用方式获取卡片ATS，兼容多种读卡器"""
    global conn
    
    # 方法1: 标准PC/SC命令 (ACR系列)
    try:
        resp, sw = send_apdu(GET_ATS_PCSC, silent=True)
        if sw == 0x9000 and resp and len(resp) > 0:
            return resp.hex(), parse_ats(resp)
    except:
        pass
        
    # 方法2: 从连接信息中获取
    try:
        # 部分读卡器会在ATR后附加ATS
        atr = conn.getATR()
        if len(atr) > 10:
            # 尝试解析ATR中的历史字节作为ATS
            ats_candidate = bytes(atr[10:])
            if len(ats_candidate) > 2:
                parsed = parse_ats(ats_candidate)
                if parsed:
                    return ats_candidate.hex(), parsed
    except:
        pass
        
    # 方法3: 显示ATR信息作为备选
    try:
        atr = conn.getATR()
        atr_hex = bytes(atr).hex()
        return "", f"ATR: {atr_hex}"
    except:
        pass
        
    return "", ""

def connect_card():
    """连接/重新连接卡片，兼容多种PC/SC读卡器"""
    global conn, card_uid, balance_str, ats_info, ats_raw_hex, pin_status, current_dir, current_file

    if conn is not None:
        try:
            conn.disconnect()
        except:
            pass
        conn = None

    print("\n" + "═" * 50)
    print("  检测卡片...")
    print("═" * 50)

    try:
        reader_list = readers()
        if not reader_list:
            print("✗ 未检测到读卡器")
            return False
            
        if selected_reader_index >= len(reader_list):
            print("✗ 之前选择的读卡器不存在，请重新选择")
            if not select_reader():
                return False
                
        reader = reader_list[selected_reader_index]
        conn = reader.createConnection()
        
        # 使用通用连接方式，支持T=0和T=1协议
        try:
            conn.connect()
        except CardConnectionException:
            # 尝试使用CardRequest自动检测
            card_request = CardRequest(timeout=1, readers=[reader], cardType=AnyCardType())
            card_service = card_request.waitforcard()
            conn = card_service.connection
            conn.connect()

        # 获取UID (通用方法)
        card_uid = get_card_uid()
        
        # 获取ATS (通用方法)
        ats_raw_hex, ats_info = get_card_ats()

        # 选择应用
        select_app()

        # 读取余额
        bal = read_balance()
        if bal is not None:
            balance_str = f"{bal // 100}.{bal % 100:02d}"
        else:
            balance_str = "读取失败"

        # 重置状态
        pin_status = "未认证"
        current_dir = "3F00"
        current_file = None

        # 显示信息
        print(f"✅ UID:  {card_uid}")
        if ats_raw_hex:
            print(f"✅ ATS:  {ats_raw_hex}")
        if ats_info:
            print(f"       {ats_info}")
        print(f"✅ 余额: {balance_str} 元")
        print(f"✅ PIN:  {pin_status}")

        return True

    except NoCardException:
        print("✗ 未检测到卡片, 请将卡片放到读卡器上")
        return False
    except CardConnectionException as e:
        print(f"✗ 连接失败: {e}")
        print("💡 请检查卡片是否正确放置，或尝试重新插拔读卡器")
        return False
    except Exception as e:
        print(f"✗ 错误: {e}")
        return False

def main_menu():
    while True:
        os.system("cls" if os.name == "nt" else "clear")

        print("╔══════════════════════════════════════════════════════════╗")
        print("║          FM1208 PBOC电子钱包管理工具                     ║")
        print("║          支持所有标准PC/SC读卡器                         ║")
        print("╠══════════════════════════════════════════════════════════╣")
        print(f"║  读卡器: {reader_name[:45]:<45} ║")
        print(f"║  UID:    {card_uid:<45} ║")
        if ats_info:
            print(f"║  ATS:    {ats_info[:45]:<45} ║")
        print(f"║  余额:   {balance_str:>6}元 | PIN: {pin_status:<12} ║")
        print(f"║  序号:   {terminal_seq:>6} | 密钥: {MASTER_KEY.hex():<16} ║")
        print("╠══════════════════════════════════════════════════════════╣")
        print("║  1 ─ PIN认证        2 ─ 充值(圈存)    3 ─ 消费          ║")
        print("║  4 ─ 刷新余额      5 ─ 交易记录      6 ─ 获取随机数    ║")
        print("║  7 ─ 系统配置      8 ─ 切换卡片      9 ─ 文件系统      ║")
        print("║  0 ─ 退出                                             ║")
        print("╚══════════════════════════════════════════════════════════╝")

        choice = input("  请选择: ").strip()

        if choice == '1':
            menu_pin()
        elif choice == '2':
            menu_load()
        elif choice == '3':
            menu_purchase()
        elif choice == '4':
            menu_balance()
        elif choice == '5':
            menu_records()
        elif choice == '6':
            menu_challenge()
        elif choice == '7':
            menu_config()
        elif choice == '8':
            # 切换卡片时允许重新选择读卡器
            if input("\n是否重新选择读卡器? (y/N): ").strip().lower() == 'y':
                if select_reader():
                    connect_card()
            else:
                connect_card()
            input("\n按回车继续...")
        elif choice == '9':
            menu_file_system()
        elif choice == '0':
            print("\n  再见!")
            try:
                if conn:
                    conn.disconnect()
            except:
                pass
            break
        else:
            print("  ✗ 无效选项")
            time.sleep(1)

if __name__ == "__main__":
    print("FM1208 PBOC电子钱包管理工具")
    print("支持: 所有标准PC/SC读卡器 | FM1208芯片卡 | PBOC电子钱包\n")

    # 启动时先选择读卡器
    if select_reader() and connect_card():
        input("\n按回车进入主菜单...")
        main_menu()
    else:
        print("\n初始化失败, 请检查读卡器和卡片连接")
        input("按回车退出...")