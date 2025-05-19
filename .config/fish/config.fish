set PATH /usr/local/sbin /usr/sbin /bin $HOME/.yarn/bin/ $HOME/.local/bin $PATH
set -x GOPATH $HOME/go

set -U fish_user_paths $HOME/go/bin $HOME/.pulumi/bin $HOME/.cargo/bin /opt/google-cloud-cli/bin/ $HOME/.zvm/self $HOME/.zvm/bin $fish_user_paths

set -gx EDITOR "nvim"
set -gx GIT_EDITOR "nvim"
set -gx GOPRIVATE "github.com/koyeb"

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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/alexis/google-cloud-sdk/path.fish.inc' ]; . '/home/alexis/google-cloud-sdk/path.fish.inc'; end
