return {
    'echasnovski/mini.ai',
    event = { 'BufReadPost', 'BufNewFile' },
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
