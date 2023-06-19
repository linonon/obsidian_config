#!/bin/bash

enter_dir=$(pwd)
cd ~/Workspace/obsidian_config

logfile="/tmp/obsidian_git_commit.log"

# 检查是否有 Git 更新
git pull >> $logfile

# 添加所有更改
git add . >> $logfile
 
# 提交更改并使用当前日期作为提交消息
git commit -m "$(date)" >> $logfile

cd $enter_dir