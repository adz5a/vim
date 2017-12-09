cd source && \
    ./configure \
    --enable-cscope \
    --enable-gui=auto \
    --enable-gtk2-check \
    --enable-gnome-check \
    --with-features=huge \
    --enable-python3interp=yes \
    --with-x &&


# check if # define X11 vars are
# set.
grep X11 src/auto/config.h && cd -
