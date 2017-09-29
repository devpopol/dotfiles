
all: vim-config

vim-config:
	ln -nfs `pwd`/vimrc ~/.vimrc || true
