# dotfiles

## zsh 関連ファイル
- .zshrc
  - ohmyzsh を利用. 以下のプラグインが要DL
    - zsh-completions
    - zsh-autosuggestions
    - zsh-syntax-highlighting
  - fzf を利用.

## NeoVim 関連ファイル

```
nvim
├── init.lua 
├── lazy-lock.json
└── lua
    ├── config
    │   └── lazy.lua
    ├── keymaps.lua
    └── plugins
        ├── both (VSCode と ネイティブな NeoVim の両方で使うプラグイン)
        └── only-nvim (VSCode では使わないプラグイン)
``` 