parse_git_branch() {
  git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

pink=$(tput setaf 218)
yellow=$(tput setaf 222)
green=$(tput setaf 151)
blue=$(tput setaf 75)
white=$(tput setaf 15)
bold=$(tput bold)
reset=$(tput sgr0)

PS1="\[${pink}\]\u" # username
PS1+="\[${white}\]:"
# PS1+="\[${pink}\]\h "; # host
PS1+="\[${green}\]\w" # working directory
#PS1+="\[$(tput setaf 39)\]\$(parse_git_branch)";
# PS1+="\n"; vm bas
PS1+="\[${blue}\]\$(parse_git_branch)"
PS1+="\[${white}\]\$ \[${reset}\]"

# .bashrc
# Source global definitions
if [ ! -z "$TMOUT" ]; then
  if [ -f /etc/bashrc ]; then
    . /etc/bashrc
  fi
  echo "Create new shell without TMOUT"
  #env -i bash --init-file ~/.bash_profile
  env -u TMOUT bash --init-file ~/.bash_profile
  echo "goodbye ..." && sleep 3
  exit
fi
