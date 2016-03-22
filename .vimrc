"表示設定
set number "行番号の表示
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
set matchtime=1 "matchtimeを0.1sに
syntax on "コードの色分け
set tabstop=8 "インデントを8つ分に設定
set expandtab "tabを半角スペースで挿入
set shiftwidth=8 "vimが自動で生成するtab幅を8に
set smartindent "オートインデント
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

" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
"Required:
call neobundle#begin(expand('~/.vim/bundle/'))
"neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'   
" 今後このあたりに追加のプラグインをどんどん書いて行きます！！
"molokai
NeoBundle 'tomasr/molokai'
"solarized カラースキーム
NeoBundle 'altercation/vim-colors-solarized'

NeoBundle "tyru/caw.vim.git"
nmap <C-K> <Plug>(caw:i:toggle)
vmap <C-K> <Plug>(caw:i:toggle)

call neobundle#end()
" Required:
filetype plugin indent on

colorscheme molokai
