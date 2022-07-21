#!/bin/bash -e

# 生成n位随机数

sudo -s

if [ ! "$1" ]; then
    echo "[warn]: please input random length"
    exit 1
fi

echo $RANDOM | cksum | cut -c 1-"$1"
