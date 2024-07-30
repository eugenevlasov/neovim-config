return {
    ---
    -- nvim-notify
    ---
    'rcarriga/nvim-notify',
    config = function()
        vim.notify = require("notify")
    end
}
