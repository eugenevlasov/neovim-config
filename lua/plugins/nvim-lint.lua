return {
    'mfussenegger/nvim-lint',
    event = { 'BufReadPost', 'BufWritePost' },
    config = function()
        local lint = require('lint')
        lint.linters_by_ft = {
            go = { 'golangcilint' },
        }

        local function try_lint()
            -- golangci-lint проверяет пакет целиком, запускаем только для файлов на диске
            if vim.bo.buftype == '' then
                lint.try_lint()
            end
        end

        vim.api.nvim_create_autocmd({ 'BufReadPost', 'BufWritePost' }, {
            group = vim.api.nvim_create_augroup('UserLint', { clear = true }),
            callback = try_lint,
        })
        -- плагин грузится по BufReadPost ещё до установки filetype,
        -- поэтому первый буфер проверяем отложенно
        vim.schedule(try_lint)
    end
}
