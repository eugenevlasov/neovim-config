local cmd = vim.cmd            -- execute Vim commands
local exec = vim.api.nvim_exec -- execute Vimscript
local g = vim.g                -- global variables
local opt = vim.opt            -- global/buffer/windows-scoped options
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
-- opt.termguicolors = true --  24-bit RGB colors

cmd([[
    hi Constant ctermfg=13 guifg=NvimLightBlue
    hi rubyConstant ctermfg=13 guifg=NvimLightBlue
    hi Type ctermfg=13 guifg=LightGreen
    hi Statement ctermfg=13 guifg=LightYellow
    hi CocMenuSel ctermbg=237 guibg=#414141
]])
-- Use the colorscheme
-- cmd 'colorscheme OceanicNext'
-- cmd 'colorscheme vscode'
-- cmd 'colorscheme codedark'

cmd([[
  filetype on
  filetype plugin indent on
]])
-- syntax on
-- filetype indent on
-- filetype plugin indent on
-----------------------------------------------------------
-- Главные
-----------------------------------------------------------
opt.mouse = ''
opt.expandtab = true              -- use spaces instead of tabs
opt.tabstop = 4                   -- 1 tab == 4 spaces
opt.shiftwidth = 4                -- shift 4 spaces when tab
opt.textwidth = 80                -- Разделитель на 80 символов
opt.cursorline = true             -- Подсветка строки с курсором
opt.spell = true
opt.spelllang = { 'en_us', 'ru' } -- Словари рус eng
opt.smartindent = true            -- autoindent new lines
opt.autoindent = true
opt.hidden = true                 -- возможность перейти на другой буфер, если текущий не сохранен
opt.signcolumn = 'yes'

opt.number = true         -- Включаем нумерацию строк
opt.relativenumber = true -- Вкл. относительную нумерацию строк


opt.hlsearch = false -- подсветка результатов поиска

-- opt.lazyredraw = true
opt.splitbelow = true
opt.splitright = true

opt.undofile = true                           -- бесконечное отмена
opt.undodir = vim.fn.expand('~/.vim/undodir') -- каталог для хранения бесконечной отмены


opt.list = true
opt.lcs = 'tab:·⁖,trail:¶' -- trail whitespace

opt.smartcase = true -- умный поиск
-- -- Фолдинг
-- opt.foldmethod = 'syntax' -- сворачивание
-- opt.foldmethod = "expr"
-- opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevel = 99 -- по умолчению все развернуто при открытии файла
opt.foldlevelstart = 99
opt.foldenable = true
opt.foldcolumn = "1"
opt.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
--
-- подстветка орфографических ошибок
-- hi SpelunkerSpellBad cterm=underline ctermfg=247 gui=underline
-- hi SpelunkerSpellBad cterm=underline gui=underline
-- cmd([[
--     hi SpellBad gui=underline guifg=lightred
-- ]])

-- подсветка 100 символя в строке
cmd([[
    highlight ColorColumn ctermbg=magenta guibg=magenta
    call matchadd('ColorColumn', '\%101v', 100)
]])
-- выделение линии с курсом при выключенном termguicolors
-- cmd([[
--     hi clear CursorLine
--     hi link CursorLine CursorColumn
--     augroup cursorline
--       au!
--       au ColorScheme * hi clear CursorLine
--                    \ | hi link CursorLine CursorColumn
--     augroup END
-- ]])
-- тип для yaml файлов
cmd([[
    autocmd BufNewFile,BufRead *.yml setf  yaml
    autocmd BufNewFile,BufRead *.development setf bash
    autocmd BufNewFile,BufRead *.production setf bash
]])
-- отключаем колонку слева со сворачиванием при большом количестве строчке
vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*",
    callback = function()
        if vim.api.nvim_buf_line_count(vim.api.nvim_get_current_buf()) > 100 then
            vim.opt_local.foldcolumn = "0"
        end
    end
}
)

-- подсветка копируемого текста
cmd([[
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=500}
augroup END
]])
g.rooter_silent_chdir = 1
