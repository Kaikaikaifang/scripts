#!/bin/bash

sudo apt install zsh

sudo chsh -s $(which zsh) <username>
sudo chsh -s $(which zsh) $(whoami)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

vi .zshrc
# 修改以下内容
plugins=(
        git
        # other plugins...
        zsh-autosuggestions
        zsh-syntax-highlighting
)

# 使配置生效
source .zshrc