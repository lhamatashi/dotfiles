# INSTALL COMMON TOOLS
#######################################################

# Init zsh
#######################################################
# Shift to zsh from bash
sudo chsh -s $(which zsh)

# Config zsh with oh-my-zsh
#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Init vim
#######################################################
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s -f ~/code/dotfiles/.vimrc ~/.vimrc
vim +PluginInstall +qall


# LINKING DOTFILES
#######################################################
ln -s -f ~/code/dotfiles/.gitconfig ~/
ln -s -f ~/code/dotfiles/.zshrc ~/
ln -s -f ~/code/dotfiles/.tmux.conf ~/
ln -s -f ~/code/dotfiles/sublime ~/.config/sublime-text-3/Packages/User
