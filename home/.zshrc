unsetopt nomatch

export UPDATE_ZSH_DAYS=7
ZSH_THEME="agnoster"
DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

ZSH_CUSTOM=~/.zsh

plugins=(
  autojump
  aws
  colored-man-pages
  command-not-found
  docker
  docker-compose
  git
  terraform
  vagrant
)

export GOPATH=~/go
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export PATH=$PATH:$HOME/.npm/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/scripts
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$HOME/.gem/ruby/2.4.0/bin
export PATH=$PATH:/usr/bin/core_perl

# export ZSH=~/.oh-my-zsh
export ZSH=/usr/share/oh-my-zsh
source $ZSH/oh-my-zsh.sh

source ~/.azure-completion.zsh

# Disable software control flow
stty -ixon

export EDITOR=nvim

if [[ -z "$TMUX" ]]
then
  tmux attach-session -t default || tmux new-session -s default
fi
if [[ -n ${INSIDE_EMACS} ]]; then
  # This shell runs inside an Emacs *shell*/*term* buffer.
  unsetopt zle
fi

export FZF_DEFAULT_COMMAND='ag -l -g ""'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVIM_TUI_ENABLE_TRUE_COLOR=1

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
