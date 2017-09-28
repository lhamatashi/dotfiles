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

# LINKING DOTFILES
#######################################################
ln -s -f ~/code/dotfiles/.gitconfig ~/
ln -s -f ~/code/dotfiles/.zshrc ~/
ln -s -f ~/code/dotfiles/.vimrc ~/
ln -s -f ~/code/dotfiles/.tmux.conf ~/
ln -s -f ~/code/dotfiles/sublime ~/.config/sublime-text-3/Packages/User

