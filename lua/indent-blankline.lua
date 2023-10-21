-- require("indent_blankline").setup {
--     space_char_blankline = " ",
--     show_current_context = true,
--     show_current_context_start = true,
--     char = '',
--     context_char = '|',
--     user_treesitter = true
-- }
require("ibl").setup {
    indent = {
        char = ' ',
        smart_indent_cap = true
    },
    scope = {
        enabled = true,
        show_start = true,
        char = '|'
    }
}
