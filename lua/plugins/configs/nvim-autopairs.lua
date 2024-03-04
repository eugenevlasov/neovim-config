---- for nvim-cmp
-- return function(_, opts)
--   local npairs = require "nvim-autopairs"
--   npairs.setup(opts)

--   local cmp_status_ok, cmp = pcall(require, "cmp")
--   if cmp_status_ok then
--     cmp.event:on("confirm_done", require("nvim-autopairs.completion.cmp").on_confirm_done { tex = false })
--   end
-- end
--- for nvim-cmp

---- for coc.nvim
return function(_, opts)
    local remap = vim.api.nvim_set_keymap
    local npairs = require('nvim-autopairs')
    npairs.setup({ map_cr = false })

    -- skip it, if you use another global object
    _G.MUtils = {}

    -- old version
    -- MUtils.completion_confirm=function()
    -- if vim.fn["coc#pum#visible"]() ~= 0 then
    -- return vim.fn["coc#_select_confirm"]()
    -- else
    -- return npairs.autopairs_cr()
    -- end
    -- end

    -- new version for custom pum
    MUtils.completion_confirm = function()
        if vim.fn["coc#pum#visible"]() ~= 0 then
            return vim.fn["coc#pum#confirm"]()
        else
            return npairs.autopairs_cr()
        end
    end

    remap('i', '<CR>', 'v:lua.MUtils.completion_confirm()', { expr = true, noremap = true })
end
---- for coc.nvim
