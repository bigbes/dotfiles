# omz
curl -SL --proto-redir -all,https https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | zsh

# spaceship
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# spaceship vi_mode
git clone https://github.com/spaceship-prompt/spaceship-vi-mode.git $ZSH_CUSTOM/plugins/spaceship-vi-mode

# zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

if [[ `uname` == "Darwin" ]]; then
    brew install direnv bat jq fzf bitwarden-cli
    /usr/local/opt/fzf/install --all --no-bash --no-fish
fi
