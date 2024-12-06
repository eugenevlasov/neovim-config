return {
    'norcalli/nvim-colorizer.lua',
    config = function()
        local opt = vim.opt            -- global/buffer/windows-scoped options
        opt.termguicolors = true
        require 'colorizer'.setup()
    end
}
