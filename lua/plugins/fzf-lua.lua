return {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- or if using mini.icons/mini.nvim
    -- dependencies = { "echasnovski/mini.icons" },
    opts = {
        keymap = {
            fzf = {
                -- используем cltr-q, чтобы выбрать все элементы и добавить в список quickfix
                ["ctrl-q"] = "select-all+accept",
            },
        },
        oldfiles = {
            -- В Telescope, когда я использовал <leader>fr, он загружал старые буферы.
            -- fzf lua делает то же самое, но по умолчанию буферы, посещенные в текущем
            -- сеансе, не включены. Я постоянно использую <leader>fr, чтобы переключаться
            -- обратно в буферы, в которых я только что был. Если вы скучали по этому из Telescope,
            -- попробуйте.
            include_current_session = true,
        },
        previewers = {
            builtin = {
                -- fzf-lua очень быстрый, но ему было очень трудно просмотреть пару файлов
                -- в репозитории. Эти файлы были очень большими файлами JavaScript (1 МБ, минимизированные, все в одной строке).
                -- Оказывается, у Treesitter были проблемы с разбором файлов.
                -- С этим изменением средство предварительного просмотра не будет добавлять подсветку синтаксиса к файлам размером более 100 КБ
                -- (Да, я знаю, что у вас не должно быть 100 КБ минимизированных файлов в системе контроля версий.)
                syntax_limit_b = 1024 * 100, -- 100KB
                -- will do nothing if `viu` isn't executable
                extensions = {
                    -- neovim terminal only supports `viu` block output
                    ["png"] = { "chafa", "{file}" },
                    -- by default the filename is added as last argument
                    -- if required, use `{file}` for argument positioning
                    ["svg"] = { "chafa", "{file}" },
                    ["jpg"] = { "chafa", "{file}" }
                },
            }
        }
    }
}
