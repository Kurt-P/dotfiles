#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

complete -cf sudo
complete -cf man
complete -cf whatis
complete -cf manswitch

PS1='[\u@\h \W]\$ '

alias ls='ls --color=auto'

alias pacman='sudo pacman'

alias cowsay='fortune | cowsay'

export EDITOR="vim"

##Scripts
PATH=$PATH:$HOME/Scripts

##Export stuff for maven
#export M2_HOME=$HOME/Apps/apache-maven-3.0.4
#export M2=$M2_HOME/bin
#PATH=$PATH:$M2
#PATH=$PATH:$HOME/myScripts
#export PATH

alias rm='rm -rf'
alias cp='cp -r'
alias mkdir='mkdir -p'
alias ll='ls -l'
alias la='ls -A'
alias clear='clear && ls'
##alias halt='sudo halt'
##alias reboot='sudo reboot'

##Git aliases##
alias gitb='git branch'
alias gits='git status'
alias gita='git add -A'
alias gitcm='git commit -m'
alias gitca='git commit -a'
alias gitco='git checkout'
alias gitcom='git checkout master'
alias gitl='git log'
alias gitd='git diff'

##Show the contence of the folder you cd into.
cd() {
    if [ -n "$1" ] ; then
        builtin cd "$@" && ls
    else
        builtin cd ~ && ls
    fi
}

manswitch() {
    man $1 | less -p "^ +$2";
}

ex () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1        ;;
      *.tar.gz)    tar xzf $1     ;;
      *.bz2)       bunzip2 $1       ;;
      *.rar)       rar x $1     ;;
      *.gz)        gunzip $1     ;;
      *.tar)       tar xf $1        ;;
      *.tbz2)      tar xjf $1      ;;
      *.tgz)       tar xzf $1       ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1  ;;
      *.7z)        7z x $1    ;;
      *)           echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

##Show the contence of your home foler when you first open a termainal.
ls

cowsay
