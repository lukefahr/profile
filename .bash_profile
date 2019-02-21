# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi


# make our terminal pretty
export TERM="xterm-color" 
export PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '

# make our regular command GNU-y
alias ls='gls -lh --color=auto'
alias cp='gcp'
alias rm='grm' 

# add a local bin to path
PATH=$PATH:$HOME/bin

# add anaconda to path
# add local path first, to give us anaconda python
PATH=$HOME/anaconda3/bin/:$PATH

