# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# Set the default editor you prefer
EDITOR=vim
export EDITOR

# make our terminal pretty
export TERM="xterm-color" 
export PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '

# only show 2 parent directories
export PROMPT_DIRTRIM=2

# make our regular command GNU-y
if hash gls 2>/dev/null; then
    alias ls='gls -lh --color=auto'
else
    alias ls='ls -lh --color=auto'
fi

if hash gcp 2>/dev/null; then
    alias cp='gcp'
fi
if hash grm 2>/dev/null; then
    alias rm='grm' 
fi

# add a local bin to path
if [ -d "$HOME/bin" ]; then
    PATH=$PATH:$HOME/bin
fi

#try to load EDA tools
if command -v module &> /dev/null; then
    module load mentor/calibre-2018
    module load cadence/cadence-adv
fi
