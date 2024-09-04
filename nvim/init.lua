-- disable netrw at the very start of your init.lua
-- This is from nvim-tree.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("keymaps")
require('config.lazy')
