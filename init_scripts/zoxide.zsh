#!/bin/zsh
if [ "$#" -ne 1 ]; then
    echo "执行安装失败，传入参数: $0 <0|1>"
    exit 1
fi

if [ "$1" -eq 0 ]; then
    curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
elif [ "$1" -eq 1 ]; then
    mkdir -p ~/.local/bin
    curl -L -o ~/.local/bin/zoxide https://pan.unvec.site/d/dl/zoxide-x64-linux-musl-bin && chmod +x ~/.local/bin/zoxide
fi
