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

# For using the homebrew GNU compiler rather than xcode
export PATH="/usr/local/bin:$PATH"
export PATH="$(brew --prefix)/opt/coreutils/libexec/gnubin:$PATH"

export PATH="/usr/local/Cellar/llvm/12.0.1/bin:$PATH"

# For using the mysql command
export PATH="/usr/local/mysql/bin:$PATH"

# path for clangd
export PATH="/usr/local/opt/llvm/bin:$PATH"

export PATH="/usr/local/go/bin:$PATH"

# ---------------------------------------
# ----           Alias               ----
# ---------------------------------------

alias grep='grep --colour=auto'
alias l='ls -lF'
alias la='ls -laF'

alias g++='g++-9 -std=c++1z -O2 -Wall'


# ---------------------------------------
# ----         macOS warning         ----
# ---------------------------------------
export BASH_SILENCE_DEPRECATION_WARNING=1

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jackykoo/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jackykoo/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jackykoo/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jackykoo/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
. "$HOME/.cargo/env"

export PATH="/Users/jackykoo/.local/share/solana/install/active_release/bin:$PATH"
