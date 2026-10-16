return {
    'nvim-neotest/neotest',
    dependencies = {
        'nvim-neotest/nvim-nio',
        'nvim-lua/plenary.nvim',
        'nvim-treesitter/nvim-treesitter',
        'fredrikaverpil/neotest-golang',
    },
    keys = {
        { '<space>tt', function() require('neotest').run.run() end,                     desc = 'Тест: ближайший' },
        { '<space>tf', function() require('neotest').run.run(vim.fn.expand('%')) end,   desc = 'Тест: файл' },
        { '<space>ta', function() require('neotest').run.run(vim.uv.cwd()) end,         desc = 'Тест: весь проект' },
        { '<space>tl', function() require('neotest').run.run_last() end,                desc = 'Тест: повторить' },
        { '<space>td', function() require('neotest').run.run({ strategy = 'dap' }) end, desc = 'Тест: отладить ближайший' },
        { '<space>ts', function() require('neotest').summary.toggle() end,              desc = 'Тест: дерево тестов' },
        { '<space>to', function() require('neotest').output.open({ enter = true }) end, desc = 'Тест: вывод' },
        { '<space>tp', function() require('neotest').output_panel.toggle() end,         desc = 'Тест: панель вывода' },
    },
    config = function()
        require('neotest').setup({
            adapters = {
                require('neotest-golang')({}),
            },
        })
    end
}
