# LazyZSH zsh通用配置懒人包

## 安装要求

- 安装了 git，zsh
- 安装了 Nerd Fonts 作为终端字体（可选）
- ZSH配置文件为空或者不包含有关ZSH的自定义配置

## 功能特性

- 包含Git登信息的主题美化
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