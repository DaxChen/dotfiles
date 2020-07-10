source ~/.dotfiles/zsh-common.sh

function open {
  if [[ $# -eq 1 ]] ; then
    xdg-open "$1" > /dev/null 2>&1 & disown
    return 1
  fi
}

