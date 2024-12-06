return {
    'nvim-treesitter/nvim-treesitter-context',
    config = function()
        require('treesitter-context').setup({
            trim_scope = 'inner',
        })
        vim.cmd([[
            hi TreesitterContext guibg=gray
        ]])
    end
}
