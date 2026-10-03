# PBOC-Applet-Fudan-Fm1208

复旦微 FM1208 JavaCOS 卡的 **PBOC 借记/贷记电子钱包**完整实现：卡内 Applet + Android 工具箱 APP + 本地测试环境三件套。

- 卡内：`FmcosWalletApplet`（Java Card 2.2.1 / FM1208 老卡兼容，PBOC 电子钱包/电子存折核心指令 + 8058 消费 + 8050 圈存）
- 手机：`JavaCOS-PBOC工具箱`（NFC 直连，主页完整收单流程 + 钱包页 + 文件系统扫描 + Applet 设置/密钥下发）
- 测试：`applet-test-env`（无需真卡，Java 实现的 JavaCard API 桩 + 162 项回归测试）

## 目录结构

```
├── FmcosWalletApplet.java                   # 卡内 Applet 源码（v2.3，无注释精简版）
├── android-app/                              # APP 完整 apktool 工程（smali/资源/清单，v1.4.7）
├── app-java-src/                             # APP 新增/修改类的 Java 源（编译工具链入口）
│   ├── src/com/gpjpboc/toolkit/             #   WalletActivity / FileSysActivity / Config 等
│   └── stub/                                 #   编译期存根（APK 内已有真实实现的类）
├── applet-test-env/                          # 本地测试环境
│   ├── src/                                  #   TestSuite / Host / HostTlv / AppScanSim
│   ├── javacard/ javacardx/                  #   JavaCard API 桩（纯 Java，无需 SDK）
├── scripts/
│   ├── build_apk.sh                          # 一键构建：Java→dex→smali→apk→签名
│   ├── run_tests.sh                          # 编译并运行 162 项回归
│   └── smali_check.py                        # smali 结构检查器（防手写 dex 结构错误）
├── keystore/gpjpboc.jks                      # 签名证书（密码见 build_apk.sh）
├── tools/                                    # apktool / ecj / r8 / uber-apk-signer / android.jar
├── docs/                                     # 使用说明、测试报告
└── release/                                # 发布成品
    ├── JavaCOS-PBOC工具箱-v1.4.7.apk        # Android 工具箱 APP
    └── toolkit.cap                          # 卡内 Applet 安装文件（GlobalPlatformPro 安装）
```

## 快速开始

### 跑回归测试（无需真卡）
```bash
scripts/run_tests.sh
# 期望输出：===== 结果: PASS 162 / FAIL 0 =====
```

### 构建 APP
```bash
scripts/build_apk.sh
# 产物：tmp 工作目录下 toolbox-aligned-signed.apk（zipalign + v1/v2/v3 签名）
```

### 安装使用
`release/` 下 APK 直接安装（Android 7+，需 NFC）。默认密钥/卡号仅供测试：
- 先在GPDroid选择applet安装到卡片上，可在列出所有applet中设置为默认启动applet（推荐）
- 主页：贴卡自动走 PBOC 收单流程（应用选择→GPO→读记录→脱机数据认证→终端风险管理）
- 钱包页：选择应用 / 验证 PIN / 读余额 / 圈存 / 消费（含日志窗）
- 文件扫描：智能 / 全量 / 自定义（FID 区间如 `2F00-2FFF`），扫描中可随时停止
- Applet 设置：发卡数据下发（80DC）、密钥下发（80D4）、PIN 重写（自动解锁）

###密钥等等内置参数说明
- java的默认密钥404142434445464748494A4B4C4D4E4F
- 内置pin 123455
## 免责声明
本项目用于 Java Card 技术学习与自家测试卡管理。默认密钥、AID 均为公开测试值；对真卡操作（尤其圈存/解锁/密钥下发）请自行评估风险。


