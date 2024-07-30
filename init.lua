-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('plugins')
require('mappings')
require('settings')

--vim.cmd('source '..vim.fn.expand('~/.config/nvim/')..'coc_notification.vim')
