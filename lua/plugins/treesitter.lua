return {
    'nvim-treesitter/nvim-treesitter',
    branch = 'main',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        local parsers = {
            'ruby', 'lua', 'vim', 'vimdoc', 'xml',
            'javascript', 'bash', 'html', 'sql',
            'json', 'csv', 'yaml', 'cpp',
        }

        require('nvim-treesitter').install(parsers)

        vim.treesitter.language.register('xml',  'html')
        vim.treesitter.language.register('yaml', 'yml')
        vim.treesitter.language.register('yaml', 'eruby.yaml')

        local big_file_lines = 1000

        vim.api.nvim_create_autocmd('FileType', {
            group = vim.api.nvim_create_augroup('UserTreesitterStart', { clear = true }),
            callback = function(args)
                local bufnr = args.buf
                if vim.api.nvim_buf_line_count(bufnr) > big_file_lines then
                    return
                end

                local lang = vim.treesitter.language.get_lang(vim.bo[bufnr].filetype)
                if not lang then
                    return
                end

                pcall(vim.treesitter.start, bufnr, lang)
            end,
        })
    end,
}
