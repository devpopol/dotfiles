
all: vim-config tmux-config

vim-config:
	ln -nfs `pwd`/vimrc ~/.vimrc || true

tmux-config:
	ln -nfs `pwd`/tmux.conf ~/.tmux.conf || true
