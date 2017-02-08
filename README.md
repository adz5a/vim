# README

This repository contains the vimr I use at work/home.

### Installation

```
    ln -s /path/to/bundle ~/.vim/bundle
```

This repository includes several vim plugins as git submodules.
The installation is done with pathogen which should be installed 
manually in your machine.

To add the plugins you just have to create a symbolink link between
your ./vim/bundle directory and this repo ./bundle and pull the submodules
contents from github.

### Mapping
Mapping introduced by my vimrc
- copy/paste : [CTRL-c]:[CTRL-v]
- move accross section : [alt-up/down/left/right]


### Cheatlist
Useful commands I don't always remember...

- undo : [u]
- remove line : [D]
- remove line from cursor : [C] -> {Insertion}
- move to input start on the current line : [MAJ-i] -> {Insertion}
- search : /searchTerm or ?searchTerm
    - / -> search forward
    - ? -> search downward
    - [n] continue searching in the same direction
    - [:noh] turn off highlightning until the next search 
