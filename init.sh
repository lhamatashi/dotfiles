# INSTALL COMMON TOOLS
#######################################################
sudo apt-get update -y && \
sudo apt-get install -y wget \
						git \
						vim \
						zsh \
						python-pip \
						python3-pip \
						virtualenv

# HOSTS
#######################################################
wget https://raw.githubusercontent.com/racaljk/hosts/master/tools/lhosts
sudo mv lhosts /usr/local/bin/lhosts
sudo chmod +x /usr/local/bin/lhosts

# Init zsh
#######################################################
# Shift to zsh from bash
sudo chsh -s $(which zsh)

# remove ~/.oh-myzsh folder if exists
if [-d ~/.oh-my-zsh ];then
  mv ~/.oh-my-zsh ~/.oh-my-zsh-back
fi

# Config zsh with oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

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
