return {
    ---- Treesitter
    'nvim-treesitter/nvim-treesitter',
    config = function()
        require 'nvim-treesitter.configs'.setup {
            ensure_installed = { "ruby", "lua", "vim", "xml", "javascript", "bash", "html", "sql", "json", "csv", "yaml"},
            endwise = {
                enable = true -- что бы это работало нужен плугин RRethy/nvim-treesitter-endwise
            },
            textobjects = {
                -- lsp_interop = {
                --     enable = true,
                --     peek_definition_code = {
                --         ["<space>if"] = "@function.outer"
                --     },
                -- },
                select = {
                    enable = true,
                    lookahead = true,
                    keymaps = {
                        ["am"] = "@function.outer",
                        ["im"] = "@function.inner",
                        ["ib"] = "@block.inner",
                        ["ab"] = "@block.outer",
                        ["iM"] = "@class.inner",
                        ["aM"] = "@class.outer"
                    }
                }
            },

            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
                disable = function(lang, bufnr) -- Disable in large buffers
                    return vim.api.nvim_buf_line_count(bufnr) > 1000
                end
            },
            incremental_selection = {
                enable = true
            },
            indent = {
                enable = true
            }
        }
        vim.treesitter.language.register('xml', 'html')
        vim.treesitter.language.register('yaml', 'yml')
        vim.treesitter.language.register('yaml', 'eruby.yaml')
    end
}
