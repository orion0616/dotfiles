#!/bin/bash

cp .zshrc ~/.zshrc
rm -rf ~/.config/nvim
cp -r ./nvim/ ~/.config/
