#!/bin/bash  
  
# 检查 history 目录是否存在  
if [ ! -d "./history" ]; then  
  # 如果目录不存在，则创建它  
  mkdir -p ./history  
fi  
  
# 复制 rules.txt 到 history 目录并使用当前时间作为新文件名  
cp ./rules.txt ./history/$(date +'%Y%m%d%H%M%S').txt
