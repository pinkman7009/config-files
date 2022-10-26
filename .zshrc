#colorscript exec 31
source ~/powerlevel10k/powerlevel10k.zsh-theme
colorscript exec 21
#colorscript random
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# go stuff 
export GOROOT=/usr/local/go
export PATH=$GOROOT/bin:$PATH

export GOPATH=/home/pinkman7009/golib
export PATH=$PATH:$GOPATH/bin
export GOPATH=$GOPATH:/home/pinkman7009/gocode

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# History in cache directory
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
HISTFILE=~/.cache/zsh/history
setopt appendhistory

# Basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/ros/noetic/setup.zsh
source ~/catkin_ws/devel/setup.zsh
export LD_LIBRARY_PATH=/path/to/Qt/5.12.5/gcc_64/lib
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
export PATH=${PATH}:${JAVA_HOME}/bin
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/zsh_completion" ] && \. "$NVM_DIR/zsh_completion"  # This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

#alias 
alias ls="lsd"
alias kubectl="minikube kubectl --"
alias emacs="emacsclient -c -a 'emacs'"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
