vim.opt.number = true
vim.opt.showmatch = true
vim.opt.matchtime = 1

-- インデント関連
vim.opt.expandtab = true -- tabを半角スペースで挿入
vim.opt.smartindent = true -- オートインデント

vim.opt.clipboard = 'unnamed'
vim.opt.virtualedit = 'block' -- 文字のないところにカーソル移動できるように
vim.opt.whichwrap = 'b,s,h,l,<,>,[,]' -- カーソルを行頭行末で止まらないように

-- 検索設定
vim.opt.ignorecase = true -- 大文字小文字の区別なく検索する
vim.opt.smartcase = true -- 検索文字列に大文字が含まれている場合は区別して検索
vim.opt.wrapscan = true -- 検索時に最後までいったら最初に戻る
vim.opt.wrap = true -- ウィンドウの幅より長い行は折り返して、次の行で表示
vim.opt.fileencoding = 'utf-8' -- 保存時の文字コード
vim.opt.fileencodings = {'utf-8', 'euc-jp', 'iso-2022-jp', 'cp932'}
vim.opt.hidden = true -- 保存されていないファイルがあるときも別のファイルを開くことが出来る
vim.opt.pastetoggle = '<f5>'

-- autocmd
vim.cmd([[
  augroup MyAutoCmd
    autocmd!
    autocmd FileType javascript setlocal sw=2 sts=2 ts=2
    autocmd FileType vim        setlocal sw=2 sts=2 ts=2
    autocmd FileType yaml       setlocal sw=2 sts=2 ts=2
    autocmd BufWritePre * :%s/\s\+$//ge
  augroup END
]])
