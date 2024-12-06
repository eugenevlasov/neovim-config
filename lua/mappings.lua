local map = vim.api.nvim_set_keymap

map('', ';', ':', {})
map('', '<UP>', '<NOP>', { noremap = true })
map('', '<Down>', '<NOP>', { noremap = true })
map('', '<Left>', '<NOP>', { noremap = true })
map('', '<Right>', '<NOP>', { noremap = true })

map('i', '<UP>', '<NOP>', { noremap = true })
map('i', '<Down>', '<NOP>', { noremap = true })
map('i', '<Left>', '<NOP>', { noremap = true })
map('i', '<Right>', '<NOP>', { noremap = true })

map('i', 'hh', '<ESC>', { noremap = true })
map('i', 'рр', '<ESC>', { noremap = true })
map('c', 'hh', '<ESC>', { noremap = true })
map('n', '<C-P>', ':Telescope find_files<CR>', { silent = true, noremap = true })
map('n', '<C-Y>', ':Telescope grep_string<CR>', { silent = true, noremap = true })
-- map('n', '<C-T>', ':Telescope live_grep<CR>', { silent = true, noremap = true})
map('n', '<C-T>', ':lua require(\'telescope\').extensions.live_grep_args.live_grep_args()<CR>',
    { silent = true, noremap = true })

map('n', '<C-F>f', ':Telescope file_browser path=%:p:h select_buffer=true<CR>', { silent = true, noremap = true })
map('n', '<C-F>d',
    ':lua require"telescope.builtin".find_files({search_dirs={vim.api.nvim_call_function(\'RubyCursorFile\',{})}})<CR>',
    { silent = true, noremap = true })
map('n', '<space>gf',
    ':lua require"telescope.builtin".find_files({search_file=vim.api.nvim_call_function(\'RubyCursorFile\',{})})<CR>',
    { silent = true, noremap = true })

map('n', '<C-F>c', ':lua require"telescope.builtin".find_files({cwd = \'./app/controllers/\'})<CR>',
    { silent = true, noremap = true })
map('n', '<C-F>t', ':lua require"telescope.builtin".find_files({cwd = \'./spec/\'})<CR>',
    { silent = true, noremap = true })
map('n', '<C-F>s', ':lua require"telescope.builtin".find_files({cwd = \'./app/services/\'})<CR>',
    { silent = true, noremap = true })
map('n', '<C-F>v', ':lua require"telescope.builtin".find_files({cwd = \'./app/views/\'})<CR>',
    { silent = true, noremap = true })
map('n', '<C-F>m', ':lua require"telescope.builtin".find_files({cwd = \'./app/models/\'})<CR>',
    { silent = true, noremap = true })
map('n', '<C-F>jb', ':lua require"telescope.builtin".find_files({cwd = \'./app/jobs/\'})<CR>',
    { silent = true, noremap = true })
map('n', '<C-F>js', ':lua require"telescope.builtin".find_files({cwd = \'./app/assets/javascripts/\'})<CR>',
    { silent = true, noremap = true })
map('n', '<C-F>e', ':lua require"telescope.builtin".find_files({cwd = \'./engines/\'})<CR>',
    { silent = true, noremap = true })
map('n', '<C-F>l', ':call localorie#translate()<CR>', { silent = true, noremap = true })
map('n', '<space>le', ':echo localorie#expand_key()<CR>', { silent = true, noremap = true })

map('n', '<space>ro', ':Telescope oldfiles<CR>', { silent = true, noremap = true })
map('n', '<tab>', '<C-W>w', {})

map('n', '<space>bd', ':BufferClose<CR>', { silent = true, noremap = true })
map('n', '<space>ив', ':BufferClose<CR>', { silent = true, noremap = true })
map('n', '<space>bj', ':BufferPick<CR>', { silent = true, noremap = true })
map('n', '<space>ио', ':BufferPick<CR>', { silent = true, noremap = true })
map('', '<space>bD', ':BufferCloseAllButCurrent<CR>', { silent = true, noremap = true })
map('', '<space>иВ', ':BufferCloseAllButCurrent<CR>', { silent = true, noremap = true })

map('', '<space>bc', ':BufferCloseAllButPinned<CR>', { silent = true, noremap = true })
map('', '<space>ис', ':BufferCloseAllButPinned<CR>', { silent = true, noremap = true })
map('', '<space>br', ':BufferRestore<CR>', { silent = true, noremap = true })
map('', '<space>ик', ':BufferRestore<CR>', { silent = true, noremap = true })
map('', '<space>s', ':w<CR>', { silent = true, noremap = true })
map('', '<space>ы', ':w<CR>', { silent = true, noremap = true })

map('', '<space>gb', ':Telescope git_branches<CR>', { silent = true, noremap })
map('', '<space>пи', ':Telescope git_branches<CR>', { silent = true, noremap })
map('', '<space>gh', ':VGit buffer_history_preview<CR>', { silent = true, noremap = true })
map('', '<space>пр', ':VGit buffer_history_preview<CR>', { silent = true, noremap = true })

map('', '<space>y', '"+y', { silent = true })
map('', '<space>н', '"+y', { silent = true })
map('', '<space>yy', '"+yy', { silent = true })
map('', '<space>нн', '"+yy', { silent = true })
map('', '<space>yf', ':let @+=@%<CR>', { silent = true, noremap = true })
map('', '<space>на', ':let @+=@%<CR>', { silent = true, noremap = true })

map('', '<space>bb', ':Telescope buffers<CR>', { silent = true, noremap = true })
map('', '<space>ии', ':Telescope buffers<CR>', { silent = true, noremap = true })

map('', '<space>fo', ':e ', { noremap = true })
map('', '<space>fd', ':Remove!<CR>', { noremap = true })

map('', '<space>hs', ':setlocal hlsearch<CR>', { noremap = true })
-- переключение между связанными файлами
-- в рельсом проекте
map('', '<space>ja', ':A<CR>', { noremap = true })
map('', '<space>оф', ':A<CR>', { noremap = true })
map('', '<space>jr', ':R<CR>', { noremap = true })
map('', '<space>ок', ':R<CR>', { noremap = true })
--
-- Peek Definition
-- you can edit the definition file in this flaotwindow
-- also support open/vsplit/etc operation check definition_action_keys
-- support tagstack C-t jump back

map("n", "<space>pd", "<cmd>Lspsaga peek_definition<CR>", { silent = true })
map("n", "gh", "<cmd>Lspsaga finder<CR>", { silent = true })
-- map("n", "<space>d", "<cmd>Lspsaga goto_definition<CR>", { silent = true })
-- map("n", "<space>d", "<cmd>Lspsaga goto_definition<CR>", { silent = true })
-- map("n", "<space>в", "<cmd>Lspsaga goto_definition<CR>", { silent = true })
map("n", "<space>bs", "<cmd>Telescope lsp_document_symbols<CR>", { silent = true })
map("n", "<space>ws", "<cmd>Telescope lsp_workspace_symbols<CR>", { silent = true })
map("n", "<space>gr", "<cmd>Telescope lsp_references<CR>", { silent = true })

map('n', '<C-e>u', '<cmd>Lazy sync<CR>', { silent = true })
map("n", "<space>gp", "<Esc><cmd>lua require('telescope').extensions.gen.prompts({ mode = 'n'})<CR>", { silent = true })
map("v", "<space>gp", "<Esc><cmd>lua require('telescope').extensions.gen.prompts({ mode = 'v'})<CR>", { silent = true })

map('n', '<space>f', '<cmd> lua  require("conform").format({ async = true, lsp_format = "fallback"})<cr>',
    { silent = true })
map('n', '<space>а', '<cmd> lua  require("conform").format({ async = true, lsp_format = "fallback"})<cr>',
    { silent = true })
map('n', '<space>ot', '<cmd>Lspsaga outline<cr>', { silent = true })
map('n', '<space>ще', '<cmd>Lspsaga outline<cr>', { silent = true })

-- quickfix
map('n', '<space>cfo', '<cmd>copen<cr>', { silent = true })
map('n', '<space>cfn', '<cmd>cn<cr>', { silent = true })
map('n', '<space>cfp', '<cmd>cp<cr>', { silent = true })
map('n', '<space>cfc', '<cmd>ccl<cr>', { silent = true })
