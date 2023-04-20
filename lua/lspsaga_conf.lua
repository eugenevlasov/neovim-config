local saga = require("lspsaga")
saga.setup({
    request_timeout = 30000,
    symbol_in_winbar = {
        enable = false
    }
})
-- saga.init_lsp_saga({
--     finder_request_timeout = 30000
--     -- your configuration
-- })
