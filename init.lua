-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('plugins')



require('lsp_conf')


require('barbar_conf')
require('telescope_conf')

-- require('cmp_conf')

require('neo-tree_conf')

require('lualine_conf')
require('nvim-autopairs_conf')
require('coq_conf')
require('vgit_conf')
require('mappings')
require('which-key_conf')
require('settings')
