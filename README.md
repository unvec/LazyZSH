# LazyZSH zsh 通用配置懒人包

## 安装要求

- 安装了 git，zsh，对于 Ubuntu/Debian 系统可执行安装命令`sudo apt install -y git zsh`
- 安装了 Nerd Fonts 作为终端字体（可选）
- ZSH 配置文件为空或者不包含有关 ZSH 的自定义配置
- 可访问 Github 的网络环境

## 功能特性

- 包含 Git 登信息的主题美化
- 历史命令自动补全
- 命令提示
- 命令语法高亮
- 启用了历史记录
- 一些实用的命令别名

## 安装部署

一行命令搞定：

```bash
git clone --recurse-submodules --depth=1 https://github.com/unvec/lazyzsh ~/.lazyzsh && echo "source ~/.lazyzsh/lazy.zsh" >> ~/.zshrc
```

切换终端默认 Shell

```bash
chsh -s /bin/zsh
```

输入用户密码确定，重启电脑即可生效
