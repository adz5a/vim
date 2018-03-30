SESSION=vimconfig

.PHONY=workspace

workspace:
	tmux new-session -s $(SESSION) -n main

symlink:
	mkdir -p $(HOME)/.vim
	ln -s $(PWD)/_vimrc $(HOME)/_vimrc
	ln -s $(PWD)/vim-pathogen/autoload $(HOME)/.vim/autoload
	ln -s $(PWD)/bundle $(HOME)/.vim/bundle
	ln -s $(PWD)/ftplugin $(HOME)/.vim/ftplugin


install-modules:
	git submodule sync && git submodule update

install: insall-modules symlink
