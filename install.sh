#!/bin/bash

if [ ! -d ~/.config/nvim ]; then
    mkdir ~/.config/nvim
fi
cp init.vim ~/.config/nvim/init.vim

if [ ! -d ~/.vim/rc ]; then
    mkdir ~/.vim/rc
fi
cp dein.toml ~/.vim/rc/dein.toml
cp dein_lazy.toml ~/.vim/rc/dein_lazy.toml
