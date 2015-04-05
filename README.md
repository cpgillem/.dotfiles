# .dotfiles
My dotfiles for bash, etc.

# Usage
I just source the .bashrc file in this repo in my computer's original ~/.bashrc and it does the rest for me. For example, clone it into your home directory and add this line to your ~/.bashrc:

    source "~/.dotfiles/.bashrc"
    
Vundle, my vim plugin manager, is a submodule, so it should be updated through recursive cloning or some other means.

    git clone --recursive https://github.com/cpgillem/.dotfiles.git

# Bash
Sourcing the bashrc adds all my bash configuration to the local computer.

# Vim
.bashrc aliases vim so it starts with the custom .vimrc so there is no need to overwrite the local one.

## Vundle
The .bashrc automatically updates Vundle's plugins whenever it's sourced. Everything else is done through the .vimrc and Vundle itself.
