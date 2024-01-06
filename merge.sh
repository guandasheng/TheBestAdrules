#!/bin/bash

# 将 add.txt 的内容追加到 all.txt 的末尾
cat add.txt >> all.txt

# 计算行数，并减去8
total_lines=$(wc -l < all.txt)
new_lines=$((total_lines - 8))

# 获取当前时间
current_time=$(date)

# 在第7行后插入当前时间和行数信息
sed -i "7a\\$current_time updated, $new_lines lines" all.txt

# 输出当前时间和总行数信息
echo "$current_time updated, $total_lines rules"
