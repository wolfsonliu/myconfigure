# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

PATH=/usr/local/texlive/2015/bin/x86_64-linux/:$PATH

export PATH

MANPATH=/usr/local/texlive/2015/texmf-dist/doc/man:$MANPATH

export MANPATH


INFOPATH=/usr/local/texlive/2015/texmf-dist/doc/info:$INFOPATH

export INFOPATH

# Personalization

