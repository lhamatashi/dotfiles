# My dotfiles for Linux

## vim setup

### Soft-linking `vimrc` file
```bash
source ./vim/_init.sh
```

## intall powerline fonts

```bash
cd /tmp
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
```

## Install `you-complete-me`

```bash
cd ~/.vim/bundle/
git clone --recursive git@github.com:Valloric/YouCompleteMe.git
git submodule update --init --recursive
./install.py
```