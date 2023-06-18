#!/bin/bash

# 获取当前脚本所在目录，并输出
SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
echo $SHELL_FOLDER

# tree命令生成目录树
cd $SHELL_FOLDER
PATH=$PATH:/opt/homebrew/bin
tree $SHELL_FOLDER -H https://sandy9707.github.io/Knowledge-Vault/ -o index.html


