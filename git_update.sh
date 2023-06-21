#!/bin/bash

# 獲取當前日期
date=$(date '+%Y-%m-%d %H:%M:%S')

# 設置基礎目錄
base_dir=$1

# 遍歷所有的子目錄
for dir in "$base_dir"/* "$base_dir"/.*/
do
    # 檢查子目錄中是否存在 .git
    if [ -d "$dir/.git" ]; then
        echo "處理目錄 $dir"
        cd "$dir" || exit
        git pull
        git add .
        git commit -m "update in obsidian: $date"
        git push
    fi
done

