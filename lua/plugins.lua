local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here

---- scrool smooth
use 'psliwka/vim-smoothie'
-----
---- цветовая схема
-----
use { 'mhartington/oceanic-next' }
-----
---- управление буферами
-----
use {
  'romgrk/barbar.nvim',
  requires = {'kyazdani42/nvim-web-devicons'}
}

-----
---- статусная строка
-----
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  config = function()
	  require('lualine').setup()
  end,
}
-----
---- умный f
-----
use 'rhysd/clever-f.vim'
-----
---- запоминание последней позиции для перехода при открытии vim
-----
use 'farmergreg/vim-lastplace'

-----
---- умная проверка офографии
-----
use 'kamykn/spelunker.vim'

-----
---- русские буквы в командном режиме
-----
use 'powerman/vim-plugin-ruscmd'

-----
---- смена рабочего каталога
-----
use 'airblade/vim-rooter'

---- дополнительные текстовые объекты
use 'wellle/targets.vim'
use 'kana/vim-textobj-user'
use 'rhysd/vim-textobj-ruby'
use 'nelstrom/vim-textobj-rubyblock'

---- подстветка парные скобки и тд
---- use 'andymass/vim-matchup'

----объекты внутри тэгов, скобок и тд
use 'machakann/vim-sandwich'

---- slim
use 'slim-template/vim-slim'

---- rails
use 'tpope/vim-rails'


---- окошко с подсказкой по командам
use { 'folke/which-key.nvim' }

---- комментирование кода
use 'tpope/vim-commentary'
----
---- уровни кода вертикальной линией обозначает
use 'Yggdroot/indentLine'

---- Telescope
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  requires = { 
      {'nvim-lua/plenary.nvim'},
      -- { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make'  }
      { 'nvim-telescope/telescope-fzy-native.nvim', run = 'make'  }
  },
}
-----
---- LSP
-----
use {
    'neovim/nvim-lspconfig',
    -- Configurations for Nvim LSP

    config = function()
        require('lspconfig').setup()
    end
}

use {
    "glepnir/lspsaga.nvim",
    branch = "main"
}

---
-- nvim-notify
--- 
use 'rcarriga/nvim-notify'

-----
---- autocomplete
-----" main one
-- use {'ms-jpq/coq_nvim', branch =  'coq' }

--- nvim-cmp
-- use { 'hrsh7th/nvim-cmp',
--          requires = {
--  {'hrsh7th/cmp-nvim-lsp'},
--  {'hrsh7th/cmp-buffer'},
--  {'hrsh7th/cmp-path'},
--  {'hrsh7th/cmp-cmdline'},
--          {'tzachar/cmp-tabnine', run='./install.sh'},
--          {'hrsh7th/cmp-nvim-lsp-signature-help'}
--  	}
--  }
--- coc.nvim
use {'neoclide/coc.nvim', branch= 'release'}
-----
---- tree view
-----
use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }
----- 
----Автоподстановка парных скобок, кавычек и тд
----
use {"windwp/nvim-autopairs"}
-----
---- VGit
-----
use {
  'tanvirtin/vgit.nvim',
  requires = {
    'nvim-lua/plenary.nvim'
  }
}
---
-- snippets
---
use 'honza/vim-snippets'
---
-- vim-fetch
--  Открывает файл с номером строки
--  default_service_spec.rb:11
use 'wsdjeg/vim-fetch'
---- startscreen
use 'mhinz/vim-startify'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
