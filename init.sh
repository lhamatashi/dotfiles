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

# LINKING DOTFILES
#######################################################
echo "linking dotfiles..."
ln -s -f ~/code/dotfiles/.gitconfig ~/
ln -s -f ~/code/dotfiles/.zshrc ~/
ln -s -f ~/code/dotfiles/.vimrc ~/
ln -s -f ~/code/dotfiles/.tmux.conf ~/



