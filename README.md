# README 

### Compile Vim from source

You will find in `compile.sh` some functions with the commands to compile vim
from source. Tested on Ubuntu. 


### Install plugins and utils

All plugins are loaded using `pathogen` and managed using git submodules.

```
make && make install
```

Add a new plugin using git:

```
git submodule add <repo_url> bundle/plugin-name
```

Plugins need to be cloned inside the `bundle` to be loaded.
