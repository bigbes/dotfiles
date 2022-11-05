if [[ -f "$HOME/.zplug/init.zsh" && -f "$HOME/.zsh_plug" ]]; then
    source $HOME/.zsh_plug
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

plugins=(git docker docker-compose macos doctl kubectl direnv spaceship-vi-mode)

source $ZSH/oh-my-zsh.sh

export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export EDITOR='vim'

path+=('/data/go/bin' '/usr/local/bin' '/usr/local/sbin')

if [[ "$OSTYPE" == "darwin"* ]]; then
    path+=("$HOME/Library/Python/2.7/bin" "$HOME/go/bin")

    source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc
    source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc
else # probably linux
    path+=("$HOME/bin" "$HOME/go/bin")
fi

# export GOPROXY=https://proxy.golang.org,direct
export GOPRIVATE=github.com/insolar,github.com/soverenio
export EDITOR=vim
export GOVCS=*:all

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
