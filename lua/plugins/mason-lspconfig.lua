return {
    'williamboman/mason-lspconfig.nvim',
    dependencies = { "williamboman/mason.nvim" },
    config = function()
        require('mason').setup({})
        require("mason-lspconfig").setup {
            ensure_installed = { "lua_ls", "ts_ls", "solargraph", "jsonls", "lemminx" },
            -- ensure_installed = { "lua_ls", "tsserver", "jsonls" },
        }
    end

}
