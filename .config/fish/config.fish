set PATH /usr/local/sbin /usr/sbin /bin $HOME/.yarn/bin/ $PATH
set -x GOPATH $HOME/go

set -U fish_user_paths $HOME/go/bin $HOME/.pulumi/bin $fish_user_paths

alias vim="nvim"

alias gs="git status"
alias gd="git diff"
