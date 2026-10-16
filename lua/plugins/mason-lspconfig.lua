return {
    'mason-org/mason-lspconfig.nvim',
    dependencies = { "mason-org/mason.nvim" },
    config = function()
        require('mason').setup({})
        require("mason-lspconfig").setup {
            ensure_installed = { "lua_ls", "ts_ls", "jsonls", "lemminx", "solargraph", "clangd", "pylsp" , "gopls"}
                -- {"fixjson", "htmlbeautifier", "xmlformatter", "yamlls",    "yamlfix", "yamlfmt" }

            --k , "postgres-language-server"}
            -- ensure_installed = { "lua_ls", "tsserver", "jsonls" },

        }

        -- утилиты, которые не являются LSP-серверами (форматтеры, линтеры, отладчики)
        local tools = { 'goimports', 'gofumpt', 'golangci-lint', 'delve' }
        local registry = require('mason-registry')
        registry.refresh(function()
            for _, name in ipairs(tools) do
                local ok, pkg = pcall(registry.get_package, name)
                if ok and not pkg:is_installed() then
                    pkg:install()
                end
            end
        end)
    end

}
