local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)



return require('lazy').setup({
  -- My plugins here

---- scrool smooth
'psliwka/vim-smoothie',
-----
---- цветовая схема
-----
-- 'mhartington/oceanic-next',
'Mofiqul/vscode.nvim' ,
'tomasiser/vim-code-dark',
-----
---- управление буферами
-----
{
  'romgrk/barbar.nvim',
  dependencies = {'kyazdani42/nvim-web-devicons'}
},

-----
---- статусная строка
-----
'nvim-tree/nvim-web-devicons',
{
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons'}
},
-----
---- умный f
-----
'rhysd/clever-f.vim',
-----
---- запоминание последней позиции для перехода при открытии vim
-----
'farmergreg/vim-lastplace',

-----
---- умная проверка офографии
-----
'kamykn/spelunker.vim',

-----
---- русские буквы в командном режиме
-----
'powerman/vim-plugin-ruscmd',

-----
---- смена рабочего каталога
-----
'airblade/vim-rooter',

---- дополнительные текстовые объекты
'wellle/targets.vim',
-- 'kana/vim-textobj-',,
-- 'rhysd/vim-textobj-ruby',
-- 'nelstrom/vim-textobj-rubyblock',

---- подстветка парные скобки и тд
---- 'andymass/vim-matchup',

----объекты внутри тэгов, скобок и тд
'machakann/vim-sandwich',

---- slim
'slim-template/vim-slim',

---- rails
'tpope/vim-rails',


---- окошко с подсказкой по командам
'folke/which-key.nvim',

---- комментирование кода
'tpope/vim-commentary',
----
---- уровни кода вертикальной линией обозначает
-- 'Yggdroot/indentLine',
'lukas-reineke/indent-blankline.nvim',

---- Treesitter
'nvim-treesitter/nvim-treesitter',
---- Treesitter-text-objects
'nvim-treesitter/nvim-treesitter-textobjects',

---- Telescope
{
  'nvim-telescope/telescope.nvim', version = '0.1.4',
-- or                            , branch = '0.1.x',
  dependencies = { 
      {'nvim-lua/plenary.nvim'},
  --     -- { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make'  }
      { 'nvim-telescope/telescope-fzy-native.nvim', build = 'make'  }
  },
},
-----
---- LSP
-----
'neovim/nvim-lspconfig',
'glepnir/lspsaga.nvim',

{
    "williamboman/mason.nvim",
    'williamboman/mason-lspconfig.nvim',
    build = ":MasonUpdate" -- :MasonUpdate updates registry contents
},
--- LSP
----
-- Pretty folding
--
{'kevinhwang91/nvim-ufo', dependencies = 'kevinhwang91/promise-async'},

---
-- nvim-notify
--- 
'rcarriga/nvim-notify',

-----
---- autocomplete
-----" main one
-- {'ms-jpq/coq_nvim', branch =  'coq' },

--- nvim-cmp
-- { 'hrsh7th/nvim-cmp',
--          dependencies = {
--  {'hrsh7th/cmp-nvim-lsp'},
--  {'hrsh7th/cmp-buffer'},
--  {'hrsh7th/cmp-path'},
--  {'hrsh7th/cmp-cmdline'},
--          {'tzachar/cmp-tabnine', build='./install.sh'},
--          {'hrsh7th/cmp-nvim-lsp-signature-help'}
--  	}
--  },
--- coc.nvim
-- {'neoclide/coc.nvim', build = 'yarn install --frozen-lockfile'},
{'neoclide/coc.nvim', branch= 'release'},
-----
---- tree view
-----
 -- {
 --   "nvim-neo-tree/neo-tree.nvim",
 --     branch = "v3.x",
 --     dependencies = { 
 --       "nvim-lua/plenary.nvim",
 --       "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
 --       "MunifTanjim/nui.nvim",
 --     }
 --   },
----
-- telescope file-browser
{
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
},
    ----
    
--- 
----Автоподстановка парных скобок, кавычек и тд
----
'windwp/nvim-autopairs',
-----
---- VGit
-----
{
  'tanvirtin/vgit.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim'
  }
},
---
-- snippets
---
'honza/vim-snippets',
---
-- vim-fetch
--  Открывает файл с номером строки
--  default_service_spec.rb:11
'wsdjeg/vim-fetch',
-- удаление файлов и тд
'tpope/vim-eunuch',

---- startscreen
'mhinz/vim-startify'
})
