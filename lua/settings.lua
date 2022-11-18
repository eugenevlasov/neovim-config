local cmd = vim.cmd             -- execute Vim commands
local exec = vim.api.nvim_exec  -- execute Vimscript
local g = vim.g                 -- global variables
local opt = vim.opt             -- global/buffer/windows-scoped options
--
-- Глобальные
--
-- matchup
-- cmd([[
--     let g:matchup_matchparen_offscreen = {'method': 'popup'}
-- ]])
-----------------------------------------------------------
-- Цветовая схема
-----------------------------------------------------------
opt.termguicolors = true      --  24-bit RGB colors

-- Use the colorscheme
cmd 'colorscheme OceanicNext'

cmd([[
  syntax on
  filetype on
  filetype indent on
  filetype plugin indent on
]])
-----------------------------------------------------------
-- Главные
-----------------------------------------------------------
opt.expandtab = true      -- use spaces instead of tabs
opt.tabstop = 4           -- 1 tab == 4 spaces
opt.shiftwidth = 4        -- shift 4 spaces when tab
opt.textwidth = 80              -- Разделитель на 80 символов
opt.cursorline = true               -- Подсветка строки с курсором
opt.spell = true
--opt.spelllang = { 'en_us', 'ru' }    -- Словари рус eng
--opt.spelllang = { 'en_us' }    -- Словари рус eng
opt.smartindent = true    -- autoindent new lines
opt.autoindent = true
opt.hidden = true -- вомзжность перейти на другой буфер, если текущий не сохранен
opt.signcolumn = 'yes'

opt.number = true                   -- Включаем нумерацию строк
opt.relativenumber = true           -- Вкл. относительную нумерацию строк 

opt.lazyredraw = true
opt.splitbelow = true
opt.splitright = true

opt.undofile = true -- бесконечное отмена
opt.undodir=vim.fn.expand('~/.vim/undodir') -- каталог для хранения бесконечной отмены


opt.list = true
opt.lcs='tab:·⁖,trail:¶' -- trail whitespace

opt.smartcase = true -- умный поиск
-- Фолдинг
opt.foldmethod = 'syntax' -- сворачивание 
opt.foldlevel = 99 -- по умолчению все развернуто при открытии файла
--
-- подстветка орфографических ошибок
cmd([[
    hi SpellBad gui=underline
    hi SpelunkerSpellBad cterm=underline ctermfg=247 gui=underline
]])

-- подсветка 100 символя в строке
cmd([[
    highlight ColorColumn ctermbg=magenta guibg=magenta
    call matchadd('ColorColumn', '\%101v', 100)
]])


g.rooter_silent_chdir = 1
