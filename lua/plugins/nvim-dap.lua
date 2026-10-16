return {
    'mfussenegger/nvim-dap',
    dependencies = {
        'leoluz/nvim-dap-go',
        'rcarriga/nvim-dap-ui',
        'nvim-neotest/nvim-nio',
    },
    keys = {
        { '<F5>',       function() require('dap').continue() end,          desc = 'Debug: старт/продолжить' },
        { '<F10>',      function() require('dap').step_over() end,         desc = 'Debug: step over' },
        { '<F11>',      function() require('dap').step_into() end,         desc = 'Debug: step into' },
        { '<F12>',      function() require('dap').step_out() end,          desc = 'Debug: step out' },
        { '<space>xb',  function() require('dap').toggle_breakpoint() end, desc = 'Debug: breakpoint' },
        { '<space>xB',  function()
            require('dap').set_breakpoint(vim.fn.input('Условие: '))
        end, desc = 'Debug: условный breakpoint' },
        { '<space>xr',  function() require('dap').run_last() end,          desc = 'Debug: повторить запуск' },
        { '<space>xq',  function() require('dap').terminate() end,         desc = 'Debug: остановить' },
        { '<space>xu',  function() require('dapui').toggle() end,          desc = 'Debug: UI' },
        { '<space>xe',  function() require('dapui').eval() end,            desc = 'Debug: значение', mode = { 'n', 'x' } },
        { '<space>xt',  function() require('dap-go').debug_test() end,     desc = 'Debug: ближайший Go-тест' },
    },
    config = function()
        local dap, dapui = require('dap'), require('dapui')

        -- delve ставится через mason (см. mason-lspconfig.lua)
        require('dap-go').setup({
            delve = {
                path = vim.fn.stdpath('data') .. '/mason/bin/dlv',
            },
        })
        dapui.setup()

        dap.listeners.after.event_initialized['dapui'] = function() dapui.open() end
        dap.listeners.before.event_terminated['dapui'] = function() dapui.close() end
        dap.listeners.before.event_exited['dapui'] = function() dapui.close() end

        vim.fn.sign_define('DapBreakpoint', { text = '●', texthl = 'DiagnosticError' })
        vim.fn.sign_define('DapBreakpointCondition', { text = '◆', texthl = 'DiagnosticWarn' })
        vim.fn.sign_define('DapStopped', { text = '▶', texthl = 'DiagnosticOk', linehl = 'Visual' })
    end
}
