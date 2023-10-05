#!/bin/bash

# 获取当前脚本所在目录，并输出
SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
echo $SHELL_FOLDER


# Set environment variables
# 检查 env.txt 文件是否存在
if [ -f "${HOME}/env.txt" ]; then
  # 如果 env.txt 存在，则运行相应的命令
  while IFS='=' read -r key value; do
    echo "$key=$value"
    export "$key"="$value"
  done < "${HOME}/env.txt"
else
  # 运行其他命令
  echo "env.txt 文件不存在"
fi


# tree命令生成目录树
cd $SHELL_FOLDER
PATH=$PATH:/opt/homebrew/bin
tree $SHELL_FOLDER -H https://sandy9707.github.io/Knowledge-Vault/ -o index.html


git add .
commitTime=`date +"%Y-%m-%d %H-%M-%S"`
git commit -a -m "${commitTime}"
git push origin main