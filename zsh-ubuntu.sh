##################
# env
##################

# use vim default as editor
export VISUAL=vim
export EDITOR="$VISUAL"
export CDPATH=$CDPATH:~/code

##################
# alias
##################
alias v=vim
alias vi=vim
alias t=tmux
alias ta='tmux attach'

function open {
  if [[ $# -eq 1 ]] ; then
    xdg-open "$1" > /dev/null 2>&1 & disown
    return 1
  fi
}

