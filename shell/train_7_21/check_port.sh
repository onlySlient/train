#!/bin/bash -e

if [ ! "$1" ]; then
    echo "[warn]: please input port"
    exit 1
fi

num=$(lsof -i:"$1" | wc -l)
if [ $num -gt 1 ]; then
    echo "port $1 is used."
fi

echo "port $1 is not used."
