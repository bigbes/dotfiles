if [[ -f "$HOME/.zplug/init.zsh" ]]; then
    source $HOME/.zplug/init.zsh

    zplug "reegnz/jq-zsh-plugin"

    zplug "direnv/direnv",    as:command, from:gh-r, rename-to:direnv
    zplug "github/hub",       as:command, from:gh-r, rename-to:hub, if:"[[ $OSTYPE == *linux* ]]"
    zplug "stedolan/jq",      as:command, from:gh-r
    zplug "sharkdp/bat",      as:command, from:gh-r, rename-to:bat
    zplug "peco/peco",        as:command, from:gh-r, rename-to:peco
    zplug "b4b4r07/httpstat", as:command, use:"httpstat.sh", rename-to:httpstat
    zplug "sharkdp/fd",       as:command, from:gh-r, rename-to:fd


    if ! zplug check; then
        zplug check --verbose
        printf "Install? [y/N]: "
        if read -q; then
            echo; zplug install
        fi
    fi
    zplug load
fi

if [[ -f $HOME/.zsh_theme ]]; then
    source $HOME/.zsh_theme
else
    ZSH_THEME="awesomepanda"
fi

# Path to your oh-my-zsh installation.
if [[ "$OSTYPE" == "darwin"* ]]; then
    export ZSH="$HOME/.oh-my-zsh"
    path+=("$HOME/.local/bin")
else # probably linux
    export ZSH="$HOME/.oh-my-zsh"
fi


if [[ -f "$HOME/.zsh_secrets" ]]; then
    source "$HOME/.zsh_secrets"
fi

plugins=(git docker docker-compose macos doctl kubectl direnv)

source $ZSH/oh-my-zsh.sh

export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export EDITOR='vim'

path+=('/data/go/bin' '/usr/local/bin' '/usr/local/sbin')

if [[ "$OSTYPE" == "darwin"* ]]; then
    path+=('$HOME/Library/Python/2.7/bin' '$HOME/go/bin')

    source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc
    source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc
else # probably linux
fi

# export GOPROXY=https://proxy.golang.org,direct
export GOPRIVATE=github.com/insolar,github.com/soverenio
export GITHUB_TOKEN=${GITHUB_PAT}
export EDITOR=vim
export GOVCS=*:all

