return {
    'neoclide/coc.nvim',
    -- branch = 'release',
    lazy = false,
    -- build = "npm ci",
    build = "yarn install --frozen-lockfile",
    config = function()
        local keyset = vim.keymap.set
        -- Auto complete
        function _G.check_back_space()
            local col = vim.fn.col('.') - 1
            return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
        end

        -- Use tab for trigger completion with characters ahead and navigate.
        -- NOTE: There's always complete item selected by default, you may want to enable
        -- no select by `"suggest.noselect": true` in your configuration file.
        -- NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
        -- other plugin before putting this into your config.
        local opts = { silent = true, noremap = true, expr = true, replace_keycodes = false }
        keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()',
            opts)
        keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

        -- Make <CR> to accept selected completion item or notify coc.nvim to format
        -- <C-g>u breaks current undo, please make your own choice.
        keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
        -- GoTo code navigation
        keyset("n", "gd", "<Plug>(coc-definition)", { silent = true })
        -- Symbol renaming
        keyset("n", "<F2>", "<Plug>(coc-rename)", { silent = true })
        -- Use K to show documentation in preview window
        function _G.show_docs()
            local cw = vim.fn.expand('<cword>')
            if vim.fn.index({ 'vim', 'help' }, vim.bo.filetype) >= 0 then
                vim.api.nvim_command('h ' .. cw)
            elseif vim.api.nvim_eval('coc#rpc#ready()') then
                vim.fn.CocActionAsync('doHover')
            else
                vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
            end
        end

        keyset("n", "K", '<CMD>lua _G.show_docs()<CR>', { silent = true })

        -- Highlight the symbol and its references when holding the cursor.
        vim.api.nvim_create_augroup("CocGroup", {})
        vim.api.nvim_create_autocmd("CursorHold", {
            group = "CocGroup",
            command = "silent call CocActionAsync('highlight')",
            desc = "Highlight symbol under cursor on CursorHold"
        })
    end
}
