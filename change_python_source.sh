#!/bin/bash

echo "Upgrading pip..."
python -m pip install -i https://pypi.tuna.tsinghua.edu.cn/simple --upgrade pip

echo "Setting Tuna as default PyPI source..."
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

echo "Done!"
