return {
    ---- уровни кода вертикальной линией обозначает
    -- 'Yggdroot/indentLine',
    'lukas-reineke/indent-blankline.nvim',
    config = function()
        require("ibl").setup {
            indent = {
                char = ' ',
                -- smart_indent_cap = true,
            },
            scope = {
                enabled = true,
                show_start = true,
                char = '|'
            }
        }
    end
}
