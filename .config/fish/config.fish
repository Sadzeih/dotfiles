set PATH /usr/local/sbin /usr/sbin /bin $HOME/.yarn/bin/ $PATH
set -x GOPATH $HOME/go

set -U fish_user_paths $HOME/go/bin $HOME/.pulumi/bin $HOME/.cargo/bin $fish_user_paths

set -gx EDITOR "nvim"
set -gx GIT_EDITOR "nvim"
set -gx GOPRIVATE "gitlab.com/sibros/*"

alias vim="nvim"

function tmux
  set -lx TERM xterm-256color 
  command tmux $argv
end

alias kns="kubens"
alias kctx="kubectx"
alias k="kubectl"

alias gs="git status"
alias gd="git diff"
