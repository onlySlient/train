#!/bin/bash -e

# 判断用户是否存在
if [ ! "$1" ]; then
    echo "[warn]: please input user name"
    exit 1
fi

for i in $(awk -F ':' '{print $1}' /etc/passwd); do
    if [ $i == $1 ]; then
        echo "user $1 is exist"
        exit 0
    fi
done

echo "user $1 is not exist"
