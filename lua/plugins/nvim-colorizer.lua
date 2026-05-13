return {
    'catgoose/nvim-colorizer.lua',
    event = { 'BufReadPost', 'BufNewFile' },
    config = function()
        vim.opt.termguicolors = true
        require('colorizer').setup()
    end
}
