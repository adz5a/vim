#!/bin/bash

DIR=$PWD
SOURCEDIR="vimsource"
VERSION="v8.0.1184"

function clone () {
    git clone https://github.com/vim/vim.git $SOURCEDIR &&
    cd $SOURCEDIR &&
    git checkout $VERSION
    cd -
}

# clean existing vim installs
function clean () {
    sudo apt remove vim vim-runtime gvim
}

# install libs, will ask for your password
function install () {
    sudo apt-get install \
        autoconf \
        lcov \
        libperl-dev \
        python-dev \
        python3-dev \
        liblua5.2-dev \
        lua5.2 \
        ruby-dev \
        cscope \
        libgtk2.0-dev \
        libx11-dev \
        libxtst-dev \
        libxt-dev \
        libsm-dev \
        libxpm-dev
}

function configure () {
    cd $SOURCEDIR && \
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
}

function makevim () {
    cd $SOURCEDIR && \
        make && \
        sudo make install && \
        vim --version &&
        cd -
}

function compilevim () {
    clean &&
        install &&
        clone &&
        configure &&
        makevim 
}
