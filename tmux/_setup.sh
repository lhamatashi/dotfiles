for d in $(ls -1d .[a-zA-Z]*); do
	echo softlinking $d
	ln -sf $(pwd)/$d $HOME/
done

# install plugin manager for tmux
if [[ ! -d ~/.tmux/plugins/ ]]; then
    mkdir -p ~/.tmux/plugins/
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi