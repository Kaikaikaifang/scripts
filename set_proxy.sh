#!/bin/bash

# 设置http代理
export http_proxy="http://127.0.0.1:7890"  

# 设置https代理
export https_proxy="http://127.0.0.1:7890"

# 判断.bashrc是否存在
if [ ! -f ~/.bashrc ]; then
  touch ~/.bashrc
fi

# 追加环境变量设置到.bashrc文件末尾
echo "export http_proxy=http://127.0.0.1:7890" >> ~/.bashrc
echo "export https_proxy=http://127.0.0.1:7890" >> ~/.bashrc
