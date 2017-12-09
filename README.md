# README 

### Compile Vim from source

You will be asked to enter your password by the various scripts
```bash
git submodule init && git submodule update
sudo apt-get update

# removes useless packages
source clean.sh 

# install libs
source install.sh

# config vim
source configure.sh

# config vim
source make.sh
```

### Install plugins and utils

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
