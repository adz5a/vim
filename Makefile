SESSION=vimconfig


all:install-modules

install-modules:
	git submodule sync && git submodule update

update:
	git submodule update


symlink:
	mkdir -p $(HOME)/.vim
	ln -s $(PWD)/_vimrc $(HOME)/_vimrc
	ln -s $(PWD)/vim-pathogen/autoload $(HOME)/.vim/autoload
	ln -s $(PWD)/bundle $(HOME)/.vim/bundle
	ln -s $(PWD)/ftplugin $(HOME)/.vim/ftplugin

install: symlink

workspace:
	tmux new-session -s $(SESSION) -n main

# to completetly remove a git submodule from this repository
# remove:
# 	rm -rf ./.git/modules/[module-name]
