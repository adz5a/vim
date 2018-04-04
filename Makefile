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

# remove current vimrc and all symlinks possibly created
uninstall:
	rm $(HOME)/_vimrc
	rm -rf $(HOME)/.vim/bundle
	rm -rf $(HOME)/.vim/ftplugin
	rm -rf $(HOME)/.vim/autoload

workspace:
	tmux new-session -s $(SESSION) -n main

# to completetly remove a git submodule from this repository
# remove:
# 	rm -rf ./.git/modules/[module-name]
