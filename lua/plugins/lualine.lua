return {

    -----
    ---- статусная строка
    -----
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', 'linrongbin16/lsp-progress.nvim' },
    config = function()
        require('lualine').setup({
            sections = {
                lualine_c = { 'filename', require('lsp-progress').progress, },

            }
            -- options = {
            --     theme = 'vscode',
            -- }
        })
        -- listen lsp-progress event and refresh lualine
        vim.api.nvim_create_augroup("lualine_augroup", { clear = true })
        vim.api.nvim_create_autocmd("User", {
            group = "lualine_augroup",
            pattern = "LspProgressStatusUpdated",
            callback = require("lualine").refresh,
        })
    end
}
