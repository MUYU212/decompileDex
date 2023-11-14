#!/bin/bash

# 循环遍历当前目录下的所有以数字命名的 .dex 文件
for file in [0-9]*.dex; do
    # 检查对应的 _repair.dex 文件是否存在
    if [[ -f "${file%.dex}_repair.dex" ]]; then
        # 如果存在，删除原始 .dex 文件
        rm "$file"
        echo "已删除文件: $file"
    else
        echo "未找到对应的修复文件，保留: $file"
    fi
done

echo "所有原始 .dex 文件处理完成。"

