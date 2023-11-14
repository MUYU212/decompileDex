#!/bin/bash

# 初始化文件计数器
counter=1

# 遍历当前目录下的所有 .dex 文件
for file in *.dex; do
    # 重命名文件
    mv "$file" "$counter.dex"
    # 增加文件计数器
    ((counter++))
done

echo "所有 .dex 文件已重命名完成。"

