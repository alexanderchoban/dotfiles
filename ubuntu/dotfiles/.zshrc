export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"

# OhMyZsh Settings
export ZSH="/home/alexander/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# PATH
PATH="$PATH:/home/alexander/.local/bin"
PATH="$PATH:/usr/local/cuda/bin"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Alias's
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias clock="tty-clock -scD"
#alias ssh="kitty +kitten ssh"
alias top="gotop -p"
alias mpvgui="mpv --player-operation-mode=pseudo-gui"
alias commit="git add . ;git commit -a"

####################
#    FUNCTIONS    #
####################

prompt_end() {
  if [[ -n $CURRENT_BG ]]; then
      print -n "%{%k%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR"
  else
      print -n "%{%k%}"
  fi

  print -n "%{%f%}"
  CURRENT_BG=''

  #Adds the new line and ➜ as the start character.
  printf "\n 🦖";
}

pause(){
  read "enter?Press [Enter] key to continue..."
}

termcolors(){
  clear
  T='gYw'   # The test text

  echo -e "\n                 40m     41m     42m     43m\
      44m     45m     46m     47m";

  for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' \
            '1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' \
            '  36m' '1;36m' '  37m' '1;37m';
    do FG=${FGs// /}
    echo -en " $FGs \033[$FG  $T  "
    for BG in 40m 41m 42m 43m 44m 45m 46m 47m;
      do echo -en "$EINS \033[$FG\033[$BG  $T  \033[0m";
    done
    echo;
  done
  echo
    pause
}

weather(){
  clear
  curl -ks https://wttr.in/$1\?nQFA
}

####################
#        NVM       #
####################

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

####################
#      PRIVATE     #
####################

if [ -e ~/.zshrc_private ]
then
    `zsh ~/.zshrc_private`
fi
