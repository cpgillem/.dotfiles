# Execute this script after sourcing the dotfiles.

# Install vim's plugins.
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim -e -s -i NONE -c PlugUpdate -c quitall

# Set git configuration information for me.
git config --global user.name "Cade Gillem"
git config --global user.email "cpgillem@gmail.com"
git config --global core.editor "vim"
