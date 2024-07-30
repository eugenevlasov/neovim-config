return {

    'nvimdev/lspsaga.nvim',
    config = function()
        local saga = require("lspsaga")
        saga.setup({
            request_timeout = 30000,
            symbol_in_winbar = {
                enable = true
            }
        })
    end
}
