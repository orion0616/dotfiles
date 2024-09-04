-- stop highlight
vim.keymap.set('n', '<ESC><ESC>' , ':nohlsearch<CR>')

-- noremap <Up> <Nop>
vim.keymap.set('n', '<Up>', '<Nop>')
vim.keymap.set('n', '<Down>', '<Nop>')
vim.keymap.set('n', '<Left>', '<Nop>')
vim.keymap.set('n', '<Right>', '<Nop>')

-- switch (j,k) and (gj, gk)
-- j/k   : 実際の行単位で移動      
-- gj/gk : 表示上の行単位で移動
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('n', 'gk', 'k')
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'gj', 'j')

-- switch jj -> <ESC> in isert mode
vim.keymap.set('i', 'jj', '<ESC>')
