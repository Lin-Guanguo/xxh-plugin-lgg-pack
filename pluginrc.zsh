# This script will be executed ON THE HOST when you connect to the host.
# Put here your functions, environment variables, aliases and whatever you need.

CURR_DIR="$(cd "$(dirname "$0")" && pwd)"

# zsh config
HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000
setopt SHARE_HISTORY

# themes
source $CURR_DIR/zsh/powerlevel10k/powerlevel10k.zsh-theme
source $CURR_DIR/zsh/.p10k.zsh

# plugins
source $CURR_DIR/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $CURR_DIR/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $CURR_DIR/zsh/zsh-vi-mode/zsh-vi-mode.zsh

# bin
export PATH="$CURR_DIR/bin:$PATH"

# fzf
function my_keybind() {
  source $CURR_DIR/zsh/fzf-key-bindings.zsh
  source $CURR_DIR/zsh/fzf-completion.zsh
}
zvm_after_init_commands+=(my_keybind)

# custom alias
alias ran='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias bat='batcat'
alias tn='tmux new-session -t '
alias ta='tmux attach -t '
alias tk='tmux kill-session -t '
alias tls='tmux ls'
alias code='source ~/mydotfile/script/vscode-fix-path.sh; code '
alias vpnset='export http_proxy=http://127.0.0.1:10809'
alias vpnclear='export http_proxy='
alias vpnswitch='python3 ~/v2ray/switch-config.py'
alias ll='ls -alh --color'
alias lll='k -ah'
alias docker='sudo docker'


# PATH
# export PATH=$PATH:/usr/local/go/bin:~/.local/bin:~/.local/share/coursier/bin
# export JAVA_HOME=/opt/tiger/jdk/jdk1.8


# tmux
export TERM=xterm-256color
export EDITOR=vim

# load local zsh
[[ -f ~/.zshrc ]] && ~/.zshrc

