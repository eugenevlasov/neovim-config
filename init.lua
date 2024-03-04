-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('plugins')
require('notify_conf')
require('lsp_conf')
require('barbar_conf')
require('telescope_conf')

--- begin autocompleete engines
-- require('cmp_conf')
-- require('coq_conf')
-- require('coc_conf')
--- end autocompleete engines
-- require('neo-tree_conf')
require('lualine_conf')
-- require('nvim-autopairs_conf')
require('vgit_conf')
require('mappings')
require('which-key_conf')
require('lspsaga_conf')
require('vscode-color-theme')
require('indent-blankline')
require('tree-sitter')
require('nvim-ufo')
require 'mason_lspconfig_conf'
require('settings')

--vim.cmd('source '..vim.fn.expand('~/.config/nvim/')..'coc_notification.vim')
