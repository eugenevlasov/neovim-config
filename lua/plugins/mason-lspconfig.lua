return {
    'williamboman/mason-lspconfig.nvim',
    dependencies = { "williamboman/mason.nvim" },
    config = function()
        require('mason').setup({})
        require("mason-lspconfig").setup {
            ensure_installed = { "lua_ls", "ts_ls", "jsonls", "lemminx", "solargraph", "clangd", "pylsp"}
                -- {"fixjson", "htmlbeautifier", "xmlformatter", "yamlls",    "yamlfix", "yamlfmt" }

            --k , "postgres-language-server"}
            -- ensure_installed = { "lua_ls", "tsserver", "jsonls" },

        }
    end

}
