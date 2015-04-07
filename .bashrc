# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# SSH Convenience Aliases
alias cclub="ssh cpgsquared@yakko.cs.wmich.edu -t 'tmux attach -d'"
alias home="ssh leona.cadegillem.me"
alias cade="ssh cadegillem.me"
alias flayground="ssh cpg@104.131.162.180"
 
# Program aliases
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias tree="ls -Rla"

# Use this repo's vimrc without deleting the user's
vim -e -s -i NONE -c VundleUpdate -c quitall
alias vim="vim -u ~/.dotfiles/.vimrc"

# If the user has a tmux conf already, source that. That conf should then source this repo's conf.
if ! [ -e ~/.tmux.conf ]; then
    alias tmux="tmux -f ~/.dotfiles/.tmux.conf"
fi

# Attach to tmux in new terminal window
tmux attach &> /dev/null

if [[ ! $TERM =~ screen ]]; then 
	exec tmux
fi
