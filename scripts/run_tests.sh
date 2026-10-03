#!/usr/bin/env bash
# applet 回归测试（无需真卡：JavaCard API 桩 + 指令级模拟）
# 期望输出：===== 结果: PASS 162 / FAIL 0 =====
set -e
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
ENV="$ROOT/applet-test-env"
WORK="$ROOT/tmp-test"

rm -rf "$WORK" && mkdir -p "$WORK/out"
find "$ENV" -name "*.java" > "$WORK/sources.txt"
javac -encoding UTF-8 -d "$WORK/out" @"$WORK/sources.txt"
java -cp "$WORK/out" tools.TestSuite
