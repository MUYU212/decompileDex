#!/bin/bash

# 确认 DexRepair.jar 文件存在
if [[ ! -f "DexRepair.jar" ]]; then
    echo "DexRepair.jar 未找到，请确保它在当前目录中。"
    exit 1
fi

# 循环遍历当前目录下的所有 .dex 文件
for file in *.dex; do
    # 执行 DexRepair.jar
    java -jar DexRepair.jar "$file"
    echo "已处理文件: $file"
done

echo "所有 .dex 文件处理完成。"

