#!/bin/bash -e

# 检测IP是否存在

if [ ! "$1" ]; then
    echo "[warn]: please input IP"
    exit 1
fi

if ping -c 1 $1 >/dev/null; then
    echo "IP $1 is exist"
else
    echo "IP $1 is not exist"
fi
