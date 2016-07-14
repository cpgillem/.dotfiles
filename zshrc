export PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg_no_bold[yellow]%}%1 [%1d] %{$reset_color%}%"
export RPROMPT="[%{$fg_no_bold[yellow]%}%?%{$reset_color%}]"

# Some defaults
export VISUAL=vim
export EDITOR="$VISUAL"

# Make tmux Great Again
alias tmux="tmux -2"

# Ubuntu's useful ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# SSH Convenience Aliases
alias yakko="ssh cpg@yakko.cs.wmich.edu -t 'tmux attach -d'"
 
# Program aliases
alias tree="ls -Rla"

# Git Shortcuts because the laziness knows no bounds
alias gs='git status'
alias gc='git commit'
alias ga='git add'
alias gd='git diff'
alias gph='git push'
alias gpl='git pull'
