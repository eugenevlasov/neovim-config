return {
    -----
    ---- VGit
    -----
    'tanvirtin/vgit.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    config = function()
        require('vgit').setup()
    end
}
