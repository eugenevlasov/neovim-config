return {
    'echasnovski/mini.ai',
    event = { 'BufReadPost', 'BufNewFile' },
    dependencies = {
        -- provides queries/<lang>/textobjects.scm for @function/@class/@block captures
        { 'nvim-treesitter/nvim-treesitter-textobjects', branch = 'main' },
    },
    config = function()
        local ai = require('mini.ai')
        ai.setup({
            n_lines = 500,
            custom_textobjects = {
                m = ai.gen_spec.treesitter({ a = '@function.outer', i = '@function.inner' }),
                b = ai.gen_spec.treesitter({ a = '@block.outer',    i = '@block.inner' }),
                M = ai.gen_spec.treesitter({ a = '@class.outer',    i = '@class.inner' }),
            },
        })
    end,
}
