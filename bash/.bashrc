parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}


PS1="\[$(tput setaf 205)\]\u ";
PS1+="\[$(tput setaf 42)\]\w";
PS1+="\[$(tput setaf 39)\]\$(parse_git_branch)";
PS1+="\n";
PS1+="\[$(tput setaf 255)\]$ ";
PS1+="\[$(tput sgr0)\]";
export PS1;
