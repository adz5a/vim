# README 

### Install

```
git submodule init && git submodule update
ln -s ~/.vim/autoload ./vim-pathogen/autoload # loads pathogen
ln -s ~/.vim/bundle ./vim-pathogen/bundle # loads plugins
```

### Tips

**Display chars**

`:set list`
`:set nolist`

This will display whitespace according to the options specified in the
`listchar` option.
