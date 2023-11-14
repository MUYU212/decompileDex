#!/bin/bash

# 确认 baksmali-2.5.2.jar 文件存在
if [[ ! -f "baksmali-2.5.2.jar" ]]; then
    echo "baksmali-2.5.2.jar 未找到，请确保它在当前目录中。"
    exit 1
fi

# 循环遍历当前目录下的所有 .dex 文件
for file in *.dex; do
    # 执行 baksmali 命令
    java -jar baksmali-2.5.2.jar d "$file"
    echo "已处理文件: $file"
done

echo "所有 .dex 文件处理完成。"

