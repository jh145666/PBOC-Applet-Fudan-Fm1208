#!/usr/bin/env bash
# 一键构建 JavaCOS-PBOC工具箱 APK
# 流程：Java 源 -> ecj 编译 -> D8 转 dex -> (zip 载体) apktool 反汇编 -> smali 合入 android-app 工程
#      -> apktool 回编 -> smali_check 结构检查 -> zipalign + v1/v2/v3 签名
set -e
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
TOOLS="$ROOT/tools"
WORK="$ROOT/tmp-build"
SRC="$ROOT/app-java-src/src/com/gpjpboc/toolkit"
STUB="$ROOT/app-java-src/stub"
PROJ="$ROOT/android-app"
KS="$ROOT/keystore/gpjpboc.jks"
KS_PASS="gpjpboc2026"

mkdir -p "$WORK/bin" "$WORK/dex" "$WORK/smali-out"

echo "== 1/6 ecj 编译 Java 源 =="
java -jar "$TOOLS/ecj.jar" -source 8 -target 8 -encoding UTF-8 \
    -cp "$TOOLS/android.jar" -sourcepath "$STUB" \
    -d "$WORK/bin" "$SRC"/*.java

echo "== 2/6 D8 转 dex =="
java -cp "$TOOLS/r8.jar" com.android.tools.r8.D8 --release --min-api 21 \
    --output "$WORK/dex" "$WORK/bin/com/gpjpboc/toolkit"/*.class

echo "== 3/6 反汇编 dex -> smali（zip 载体 + apktool） =="
(cd "$WORK" && rm -f mini.apk && zip -q -j mini.apk dex/classes.dex)
rm -rf "$WORK/smali-out"
java -jar "$TOOLS/apktool.jar" d -f "$WORK/mini.apk" -o "$WORK/smali-out"

echo "== 4/6 合入 android-app 工程 =="
cp "$WORK/smali-out/smali/com/gpjpboc/toolkit/"*.smali "$PROJ/smali/com/gpjpboc/toolkit/"

echo "== 5/6 回编 APK =="
rm -rf "$PROJ/build"
java -jar "$TOOLS/apktool.jar" b "$PROJ" -o "$WORK/toolbox-unsigned.apk"

echo "== 6/6 结构检查 + 签名 =="
python3 "$ROOT/scripts/smali_check.py" "$PROJ/smali"
java -jar "$TOOLS/uber-apk-signer.jar" --apks "$WORK/toolbox-unsigned.apk" \
    --out "$WORK" --ks "$KS" --ksAlias toolkit --ksPass "$KS_PASS" --ksKeyPass "$KS_PASS"
java -jar "$TOOLS/uber-apk-signer.jar" --apks "$WORK/toolbox-aligned-signed.apk" --onlyVerify

echo
echo "构建完成：$WORK/toolbox-aligned-signed.apk"
