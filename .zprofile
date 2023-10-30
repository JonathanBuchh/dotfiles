path=(~/bin $path)
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
path+="~/Library/Python/3.10/bin"

eval "$(/opt/homebrew/bin/brew shellenv)"
