
all: vim-config tmux-config helpers git-globals

git-globals:
	git config --global core.excludesfile ~/dotfiles/gitignore_global
	git config --global alias.git '!exec git'

vim-config:
	ln -nfs `pwd`/vimrc ~/.vimrc || true
	ln -nfs `pwd`/vim ~/.vim || true

tmux-config:
	ln -nfs `pwd`/tmux.conf ~/.tmux.conf || true

tools:
	which awk || brew install awk
	which tmux || brew install tmux
	which fzf || brew install fzf && /usr/local/opt/fzf/install
	brew install the_silver_searcher

helpers: tools
	>> ~/.bash_profile
	awk 'BEGIN { cnt=0 } /source\ ~\/dofiles\/bash_profile_additions/{ cnt += 1} END { if(cnt == 0) system("echo source ~/dotfiles/bash_profile_additions >> ~/.bash_profile") }' ~/.bash_profile
