#!/bin/bash

# 安装 inotify-tools
sudo apt-get update
sudo apt-get install -y inotify-tools

while inotifywait -e modify add.txt; do
    cat add.txt >> all.txt
    sort -u all.txt -o all.txt
    total_lines=$(wc -l < all.txt)
    new_lines=$((total_lines - 8))
    current_time=$(date)
    sed -i "7a\\$current_time updated, $new_lines lines" all.txt
    echo "$current_time updated, $total_lines lines in total"
done
