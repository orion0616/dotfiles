#!/bin/bash

if [ ! -d ~/.config/nvim ]; then
    mkdir -p ~/.config/nvim
fi
cp ./nvim/init.vim ~/.config/nvim/init.vim

if [ ! -d ~/.vim/rc ]; then
    mkdir -p ~/.vim/rc
fi
cp ./nvim/dein.toml ~/.vim/rc/dein.toml
cp ./nvimdein_lazy.toml ~/.vim/rc/dein_lazy.toml
