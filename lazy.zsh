#! zsh init profile DO NOT EXECUTE this DIRECTLY

# ZSH 特性启用
ZSH_SMART_CD=ON #智能跳转目录

# ZSH 插件启用，不启用则注释掉那行即可
ZSH_PLUGIN_autocomplete=ON
ZSH_PLUGIN_autosuggestions=ON
ZSH_PLUGIN_powerlevel10k=ON
ZSH_PLUGIN_syntax_highlighting=ON

# 设置LazyZSH路径
LAZY_ZSH=$HOME/.lazyzsh

# 加载插件
if [[ $ZSH_PLUGIN_syntax_highlighting == ON ]]; then
    source $LAZY_ZSH/plugins/syntax-highlighting/zsh-syntax-highlighting.zsh
fi
if [[ $ZSH_PLUGIN_autocomplete == ON ]]; then
    source $LAZY_ZSH/plugins/autocomplete/zsh-autocomplete.plugin.zsh
    if [[ $(head -n1 /etc/os-release | grep Ubuntu) ]]; then
        export skip_global_compinit=1
    fi
fi
if [[ $ZSH_PLUGIN_autosuggestions == ON ]]; then
    source $LAZY_ZSH/plugins/autosuggestions/zsh-autosuggestions.zsh
fi
if [[ $ZSH_PLUGIN_powerlevel10k == ON ]]; then
    source $LAZY_ZSH/plugins/powerlevel10k/powerlevel10k.zsh-theme
    source $LAZY_ZSH/p10k-theme.zsh
fi

if [[ $ZSH_SMART_CD == ON ]]; then
    if ! command -v zoxide &>/dev/null; then
        source $LAZY_ZSH/init_scripts/zoxide.zsh 1
    else
        eval "$(zoxide init zsh)"
        alias cd=z
    fi
fi

# ~/.zsh_history
setopt histignorealldups sharehistory
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

function setproxy() {
    local port=${1:-7890} # 更改端口为您的代理软件监听端口, 默认7890
    # 参数默认 127.0.0.1
    local host=${2:-127.0.0.1} # 更改IP为您的代理软件监听IP, 默认127.0.0.1
    export http_proxy=http://$host:$port && export https_proxy=$http_proxy
    export no_proxy=localhost,127.0.0.1,::1,.localdomain
    echo "You've set the proxy success! Info: $http_proxy"
}
function unsetproxy() {
    unset http_proxy && unset https_proxy && unset no_proxy
    echo "You've unset the proxy success!"
}

# 引入 .profile
if [ -f ~/.profile ]; then
    source ~/.profile
fi

# 命令行别名
if [ -f $LAZY_ZSH/alias.zsh ]; then
    source $LAZY_ZSH/alias.zsh
fi
