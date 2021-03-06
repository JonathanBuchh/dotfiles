export ZSH="/Users/jonathanbuchholz/.oh-my-zsh"
plugins=(
	git
	zsh-autosuggestions
)
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

# Aliases
alias gp='git pull'
alias gpu='git push -u origin $(git rev-parse --abbrev-ref HEAD)'
alias gs='git status -s'
alias gl='git log --oneline --decorate'
alias gca='git commit -v -a'

# rbenv
eval "$(rbenv init -)"
