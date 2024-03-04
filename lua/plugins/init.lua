return {
    -- My plugins here

    -----
    ---- цветовая схема
    -----
    'mhartington/oceanic-next',
    'Mofiqul/vscode.nvim',
    'tomasiser/vim-code-dark',
    -----
    ---- управление буферами
    -----
    {
        'romgrk/barbar.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },

    -----
    ---- статусная строка
    -----
    'nvim-tree/nvim-web-devicons',
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', 'linrongbin16/lsp-progress.nvim' }
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
        'nvim-telescope/telescope.nvim',
        version = '0.1.5',
        -- or                            , branch = '0.1.x',
        dependencies = {
            { 'nvim-lua/plenary.nvim' },
            --     -- { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make'  }
            { 'nvim-telescope/telescope-fzy-native.nvim', build = 'make' },
            {
                "nvim-telescope/telescope-live-grep-args.nvim",
                -- This will not install any breaking changes.
                -- For major updates, this must be adjusted manually.
                version = "^1.0.0",
            },
        },
    },
    -----
    ---- LSP
    -----
    'neovim/nvim-lspconfig',
    'nvimdev/lspsaga.nvim',

    {
        "williamboman/mason.nvim",
        'williamboman/mason-lspconfig.nvim',
        build = ":MasonUpdate" -- :MasonUpdate updates registry contents
    },
    --- LSP
    ----
    -- Pretty folding
    --
    { 'kevinhwang91/nvim-ufo', dependencies = 'kevinhwang91/promise-async' },

    ---
    -- nvim-notify
    ---
    'rcarriga/nvim-notify',

        ----
    -- telescope file-browser
    {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    },
    ----

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
    -- 'honza/vim-snippets',
    ---
    -- vim-fetch
    --  Открывает файл с номером строки
    --  default_service_spec.rb:11
    'wsdjeg/vim-fetch',
    -- удаление файлов и тд
    'tpope/vim-eunuch',

    ---- startscreen
    'mhinz/vim-startify'
};
