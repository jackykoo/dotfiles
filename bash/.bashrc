parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

pink=$(tput setaf 218);
yellow=$(tput setaf 222);
green=$(tput setaf 151);
white=$(tput setaf 15);
bold=$(tput bold);
reset=$(tput sgr0);


#PS1+="\[$(tput setaf 26)\]\$(parse_git_branch)";

#PS1="\[${bold}\]";
#PS1="\n";  
PS1="\[${green}\]\u";  # username
PS1+="\[${white}\]@"; 
PS1+="\[${pink}\]\h "; # host 
PS1+="\[${yellow}\]\w";  # working directory
#PS1+="\[$(tput setaf 39)\]\$(parse_git_branch)";
PS1+="\n";  
PS1+="\[${white}\]\$ \[${reset}\]";
export PS1;
. "$HOME/.cargo/env"
