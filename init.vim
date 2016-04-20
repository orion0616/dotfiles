set number "行番号の表示
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
set matchtime=1 "matchtimeを0.1sに
syntax on "コードの色分け
set tabstop=8 "インデントを8つ分に設定
set expandtab "tabを半角スペースで挿入
set shiftwidth=8 "vimが自動で生成するtab幅を8に
set smartindent "オートインデント
set clipboard=unnamed
set cursorline
"set list "空白文字の可視化
set virtualedit=block "文字のないところにカーソル移動できるように
set backspace=indent,eol,start "BSを空白行末行頭でも使えるように
set whichwrap=b,s,h,l,<,>,[,] "カーソルを行頭行末で止まらないように
set mouse=a "全モードでマウスを有効化

"検索設定
set ignorecase "大文字小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索
set wrapscan "検索時に最後までいったら最初に戻る

set laststatus=2 "エディタウィンドウの末尾から2行目にstatus lineを
set wildmenu "コマンドライン補完を拡張モードに
set wrap "ウィンドウの幅より長い行は折り返して、次の行で表示
set encoding=utf8
set fileencodings=utf-8,euc-jp,iso-2022-jp,cp932
set showcmd "画面最下部にコマンド表示

let g:EasyMotion_leader_key=";"

if &compatible
        set nocompatible
endif
set runtimepath ^=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.cache/dein'))
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/neocomplete.vim')
call dein#add('tomasr/molokai')
call dein#add('tpope/vim-fugitive')
call dein#add('itchyny/lightline.vim')
call dein#add('Yggdroot/indentLine')
call dein#add('Lokaltog/vim-easymotion')
call dein#add('kannokanno/previm')
call dein#add('davidhalter/jedi-vim')
call dein#add('tyru/caw.vim')
nmap <C-K> <Plug>(caw:i:toggle)
vmap <C-K> <Plug>(caw:i:toggle)
"add plugins
call dein#end()

filetype plugin indent on

colorscheme molokai
set list listchars=tab:\¦\ 
