# install powerline fonts
# clone

git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

# ycm
cd ~/.vim/bundle/
git clone --recursive git@github.com:Valloric/YouCompleteMe.git
git submodule update --init --recursive
./install.py



