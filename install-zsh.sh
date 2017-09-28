# ZSH
#######################################################
# Shift to zsh from bash
sudo chsh -s $(which zsh)

# remove ~/.oh-myzsh folder if exists
if [-d ~/.oh-my-zsh ];then
  mv ~/.oh-my-zsh ~/.oh-my-zsh-back
fi

# Config zsh with oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


