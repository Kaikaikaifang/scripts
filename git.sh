#!/bin/bash

git config --global user.name "kaikai"
git config --global user.email "2837968358@qq.com"

ssh-keygen -t ed25519 -C "2837968358@qq.com"

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

cat ~/.ssh/id_ed25519.pub