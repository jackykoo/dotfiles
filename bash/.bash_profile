if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

export PATH=/usr/local/opt/grep/libexec/gnubin:$PATH

export PATH=/usr/local/opt/binutils/bin:$PATH
export PATH=/usr/local/bin/git:$PATH


# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
export PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"

export PATH="$HOME/opt/anaconda3/bin:$PATH"  

# For using the homebrew GNU compiler rather than xcode
export PATH="/usr/local/bin:$PATH"

# For using the mysql command
export PATH="/usr/local/mysql/bin:$PATH"

# Alias:
alias grep='grep --colour=auto'
alias l='ls -lF'
alias la='ls -laF'
alias g++='g++-9 -std=c++1z -O2 -Wall'


export BASH_SILENCE_DEPRECATION_WARNING=1
