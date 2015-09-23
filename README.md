# .dotfiles
My dotfiles for bash, etc.

# Usage
I just source the .bashrc file in this repo in my computer's original ~/.bashrc and it does the rest for me. For example, clone it into your home directory and add this line to your ~/.bashrc:

    source "~/.dotfiles/.bashrc"
    
Vim-Plug is what I use for plugins in vim, and that is easily installed from running the first_time.sh script.

    ./first_time.sh

# Bash
Sourcing the .bashrc adds all my bash configuration to the local computer. Add this to the existing ~/.bashrc:

    source ~/.dotfiles/.bashrc

# Vim
Sourcing the .vimrc in the existing .vimrc will configure vim.

    so ~/.dotfiles/.vimrc
    
# Tmux

    source ~/.dotfiles/.tmux.conf

# Linking
Symbolic linking is an alternative to sourcing these dotfiles when no customization is desired.

    ln -s ~/.dotfiles/.vimrc ~/.vimrc
