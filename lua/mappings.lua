local map = vim.api.nvim_set_keymap

map('', ';', ':', {})
map('','<UP>', '<NOP>', { noremap = true})
map('','<Down>', '<NOP>', { noremap = true})
map('','<Left>', '<NOP>', { noremap = true})
map('','<Right>', '<NOP>', { noremap = true})

map('i','<UP>', '<NOP>', { noremap = true})
map('i','<Down>', '<NOP>', { noremap = true})
map('i','<Left>', '<NOP>', { noremap = true})
map('i','<Right>', '<NOP>', { noremap = true})

map('n', '<C-P>', ':Telescope find_files<CR>', { silent = true, noremap = true})
map('n', '<C-Y>', ':Telescope grep_string<CR>', { silent = true, noremap = true})
map('n', '<C-T>', ':Telescope live_grep<CR>', { silent = true, noremap = true})
map('n', '<C-F>c', ':lua require"telescope.builtin".find_files({cwd = \'./app/controllers/\'})<CR>', { silent = true, noremap = true})
map('n', '<C-F>t', ':lua require"telescope.builtin".find_files({cwd = \'./spec/\'})<CR>', { silent = true, noremap = true})
map('n', '<C-F>s', ':lua require"telescope.builtin".find_files({cwd = \'./app/services/\'})<CR>', { silent = true, noremap = true})
map('n', '<C-F>v', ':lua require"telescope.builtin".find_files({cwd = \'./app/views/\'})<CR>', { silent = true, noremap = true})
map('n', '<C-F>m', ':lua require"telescope.builtin".find_files({cwd = \'./app/models/\'})<CR>', { silent = true, noremap = true})
map('n', '<C-F>jb', ':lua require"telescope.builtin".find_files({cwd = \'./app/jobs/\'})<CR>', { silent = true, noremap = true})
map('n', '<C-F>js', ':lua require"telescope.builtin".find_files({cwd = \'./app/assets/javascripts/\'})<CR>', { silent = true, noremap = true})

map('n', '<tab>', '<C-W>w', {})

map('n', '<space>bd', ':BufferClose<CR>', { silent = true, noremap = true })
map('n', '<space>ив', ':BufferClose<CR>', { silent = true, noremap = true })
map('n', '<space>bj', ':BufferPick<CR>', { silent = true, noremap = true })
map('n', '<space>ио', ':BufferPick<CR>', { silent = true, noremap = true })

map('', '<space>s', ':w<CR>', { silent = true, noremap = true })
map('', '<space>ы', ':w<CR>', { silent = true, noremap = true })

map('', '<space>gb', ':Telescope git_branches<CR>', { silent = true, noremap })
map('', '<space>пи', ':Telescope git_branches<CR>', { silent = true, noremap })
map('', '<space>gh', ':VGit buffer_history_preview<CR>', { silent = true, noremap = true})
map('', '<space>пр', ':VGit buffer_history_preview<CR>', { silent = true, noremap = true})
map('', '<space>bD', ':BufferCloseAllButCurrent<CR>', { silent = true, noremap = true })
map('', '<space>иВ', ':BufferCloseAllButCurrent<CR>', { silent = true, noremap = true })

map('', '<space>y','"+y', { silent = true })
map('', '<space>н','"+y', { silent = true })
map('', '<space>yy','"+yy', { silent = true })
map('', '<space>yy','"+yy', { silent = true })
map('', '<space>yf',':let @+=@%<CR>', {silent = true, noremap = true} )

map('n', '<space>bt', ':NeoTreeRevealToggle<CR>', { silent = true, noremap = true })
map('n', '<space>ие', ':NeoTreeRevealToggle<CR>', { silent = true, noremap = true })
map('', '<space>bb', ':Neotree buffers toggle<CR>', { silent = true, noremap  = true})
map('', '<space>ии', ':Neotree buffers toggle<CR>', { silent = true, noremap  = true})
-- Peek Definition
-- you can edit the definition file in this flaotwindow
-- also support open/vsplit/etc operation check definition_action_keys
-- support tagstack C-t jump back
map("n", "<space>pd", "<cmd>Lspsaga peek_definition<CR>", { silent = true })
map("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })
