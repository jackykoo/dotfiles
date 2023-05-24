if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

export PATH=/usr/local/opt/grep/libexec/gnubin:$PATH

export PATH=/usr/local/opt/binutils/bin:$PATH
export PATH=/usr/local/bin/git:$PATH


# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
export PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"

export PATH="$HOME/opt/anaconda3/bin:$PATH"  # commented out by conda initialize  

# ---------------------------------------
# ----           Homebrew            ----
# ---------------------------------------
eval "$(/opt/homebrew/bin/brew shellenv)"

# For using the homebrew GNU compiler rather than xcode
export PATH="/usr/local/bin:$PATH"
export PATH="$(brew --prefix)/opt/coreutils/libexec/gnubin:$PATH"

export PATH="/usr/local/Cellar/llvm/12.0.1/bin:$PATH"

# For using the mysql command
export PATH="/usr/local/mysql/bin:$PATH"

# path for clangd
export PATH="/usr/local/opt/llvm/bin:$PATH"

export PATH="/usr/local/go/bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
  . "/opt/homebrew/opt/nvm/nvm.sh"

# ---------------------------------------
# ----           Alias               ----
# ---------------------------------------

alias grep='grep --colour=auto'
alias l='ls -lF'
alias la='ls -laF'

alias g++='g++ -std=c++1z -O2 -Wall -Wtype-limits'
alias python='python3'
alias pip='pip3'


# ---------------------------------------
# ----         macOS warning         ----
# ---------------------------------------
export BASH_SILENCE_DEPRECATION_WARNING=1
