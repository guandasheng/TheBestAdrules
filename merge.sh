#!/bin/bash

# 将 add.txt 的内容追加到 all.txt 的末尾
cat add.txt >> all.txt

# 计算行数，并减去8
total_lines=$(wc -l < all.txt)
new_lines=$((total_lines - 8))

# 获取当前时间（格式化为中文）
current_time=$(date +"规则更新时间：%Y年%m月%d日 %H时%M分%S秒")
sed -i '8d' all.txt
# 在第7行后插入当前时间和行数信息
sed -i "7a\\$current_time 更新共 $new_lines 规则" all.txt
