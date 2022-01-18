# configure tools an applications

function setup_tmux {
	# run tmux when starting a shell but only if we are not in a tmux session already
	if [ -z ${TMUX+x} ]; then
	    WHOAMI=$(whoami)
	    if tmux has-session -t $WHOAMI 2>/dev/null; then
	        tmux -2 attach-session -t $WHOAMI
	    else
	        tmux -2 new-session -s $WHOAMI
	    fi
	fi
}

# micro editor
export MICRO_TRUECOLOR=1

# nnn file manager
export NNN_FIFO=/tmp/nnn.fifo
export NNN_PLUG="j:autojump;p:preview-tui"

# rust
source $HOME/.cargo/env

# set up environment
setup_tmux
