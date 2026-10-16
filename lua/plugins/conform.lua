return {
    'stevearc/conform.nvim',
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        require('conform').setup({
            formatters_by_ft = {
                --     lua = { "stylua" },
                --     -- Conform will run multiple formatters sequentially
                --     -- python = { "isort", "black" },
                --     -- You can customize some of the format options for the filetype (:help conform.format)
                --     -- rust = { "rustfmt", lsp_format = "fallback" },
                --     -- Conform will run the first available formatter
                --     javascript = { "prettierd", "prettier", stop_after_first = true },
                --     ruby = { 'solargraph' },
                xml = { 'xmllint' },
                yaml = { 'yamlfmt' },
                sql = { 'pg_format'},
                html = { 'htmlbeautifier'},
                -- goimports упорядочивает импорты, gofumpt — строгий gofmt
                go = { 'goimports', 'gofumpt' },

            },
            -- форматирование при сохранении только для Go
            format_on_save = function(bufnr)
                if vim.bo[bufnr].filetype ~= 'go' then
                    return
                end
                return { timeout_ms = 1000, lsp_format = 'fallback' }
            end,
        })
    end
}
