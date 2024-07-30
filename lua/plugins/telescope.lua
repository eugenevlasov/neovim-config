return ---- Telescope
{
    'nvim-telescope/telescope.nvim',
    version = '0.1.8',
    -- or                            , branch = '0.1.x',
    dependencies = {
        { 'nvim-lua/plenary.nvim' },
        --     -- { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make'  }
        { 'nvim-telescope/telescope-fzy-native.nvim', build = 'make' },
        {
            "nvim-telescope/telescope-live-grep-args.nvim",
            -- This will not install any breaking changes.
            -- For major updates, this must be adjusted manually.
            version = "^1.0.0",
        },
    },
    config = function()
        local actions = require "telescope.actions"
        local action_state = require "telescope.actions.state"
        require('telescope').setup {
            extensions = {
                -- fzf = {
                --   fuzzy = true,                    -- false will only do exact matching
                --   override_generic_sorter = false, -- override the generic sorter
                --   override_file_sorter = true,     -- override the file sorter
                --   case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                -- }
                -- fzy_native = {
                --     override_generic_sorter = false,
                --     override_file_sorter = true,
                -- }
            },
            defaults = {
                layout_config = {
                    prompt_position = 'top'
                },
                sorting_strategy = 'ascending',
                mappings = {
                    i = {
                        ["<C-k>"] = require('telescope.actions').cycle_history_prev,
                        ["<C-j>"] = require('telescope.actions').cycle_history_next
                    }
                }
                -- ,
                -- vimgrep_arguments = {
                --     "rg",
                --     "--color=never",
                --     "--no-heading",
                --     "--with-filename",
                --     "--line-number",
                --     "--column",
                --     "--smart-case",
                --     "--hidden",
                --     "--glob"
                -- }
            },
            pickers = {
                find_files = {
                    on_input_filter_cb = function(prompt)
                        local find_colon = string.find(prompt, ":")
                        if find_colon then
                            local ret = string.sub(prompt, 1, find_colon - 1)
                            vim.schedule(function()
                                local prompt_bufnr = vim.api.nvim_get_current_buf()
                                local picker = action_state.get_current_picker(prompt_bufnr)
                                local lnum = tonumber(prompt:sub(find_colon + 1))
                                if type(lnum) == "number" then
                                    local win = picker.previewer.state.winid
                                    local bufnr = picker.previewer.state.bufnr
                                    local line_count = vim.api.nvim_buf_line_count(bufnr)
                                    vim.api.nvim_win_set_cursor(win, { math.max(1, math.min(lnum, line_count)), 0 })
                                end
                            end)
                            return { prompt = ret }
                        end
                    end,
                    attach_mappings = function()
                        actions.select_default:enhance {
                            post = function()
                                -- if we found something, go to line
                                local prompt = action_state.get_current_line()
                                local find_colon = string.find(prompt, ":")
                                if find_colon then
                                    local lnum = tonumber(prompt:sub(find_colon + 1))
                                    vim.api.nvim_win_set_cursor(0, { lnum, 0 })
                                end
                            end,
                        }
                        return true
                    end,
                },
            }
        }
        -- To get fzf loaded and working with telescope, you need to call
        -- load_extension, somewhere after setup function:
        -- require('telescope').load_extension('fzf')
        -- require('telescope').load_extension('fzy_native')
        require('telescope').load_extension('zf-native')
        require('telescope').load_extension('file_browser')
        require('telescope').load_extension('yank_history')
        require('telescope').load_extension('live_grep_args')
        require('telescope').load_extension('gen')
    end
}
