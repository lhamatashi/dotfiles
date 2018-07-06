# INSTALL COMMON TOOLS
#######################################################
sudo pacman -S zsh \
                fzf \
                vim \
                tmux 

# Init zsh
#######################################################
# Change default shell to zshell
sudo chsh -s $(which zsh)

# Config zsh with oh-my-zsh
#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Init vim
#######################################################
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s -f ~/code/dotfiles/vim/.vimrc ~/.vimrc
vim +PluginInstall +qall


# LINKING DOTFILES
#######################################################
# sublime text
ln -s -f ~/code/dotfiles/sublime ~/.config/sublime-text-3/Packages/User

# git
source ~/code/dotfiles/git/_init.sh

# tmux
source ~/code/dotfiles/tmux/_init.sh

# vim
source ~/code/dotfiles/vim/_init.sh

# zsh
source ~/code/dotfiles/zsh/_init.sh
