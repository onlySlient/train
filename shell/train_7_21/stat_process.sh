#!/bin/bash -e

# 判断指定进程的运行情况

if [ ! "$1" ]; then
    echo "[warn]: please input process name"
    exit 1
fi

num=$(ps -ef | grep $1 | grep -vc grep)
echo "num: $num"
if [ $num -gt 1 ]; then
    echo "$1 is running"
else
    echo "$1 is not running"
fi
