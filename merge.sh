#!/bin/bash

while inotifywait -e modify add.txt; do
    cat add.txt >> all.txt                # 将 add.txt 的内容追加到 all.txt 的末尾
    sort -u all.txt -o all.txt           # 去除 all.txt 中的重复行
    total_lines=$(wc -l < all.txt)       # 计算 all.txt 的总行数
    new_lines=$((total_lines - 8))       # 计算剩余行数
    current_time=$(date)                 # 获取当前时间
    sed -i "7a\\$current_time updated, $new_lines lines" all.txt   # 在第7行后插入当前时间和行数信息
    echo "$current_time updated, $total_lines lines in total"    # 显示当前时间和总行数
done
