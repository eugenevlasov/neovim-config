vim.g.coq_settings = {
    completion = {
        always = true
    },
  auto_start = 'shut-up',
  clients = {
      snippets = {
          enabled = false
      },
      tmux = { enabled = false },
      tags = { enabled = false},

      tabnine = { enabled = true, always_on_top = true}
  },
  limits = {
      completion_auto_timeout = 0.8
  },
    keymap = {
        pre_select = true,
   },
   display = {
       ghost_text = { enabled = false},
       pum = {
           fast_close = false
       },
       preview = {
           positions = {
            ["north"] = 0,
            ["east"] = -1,
            ["west"] = -1,
            ["south"] = -1
           }
       }

   }

}

vim.cmd([[
set completeopt-=preview
]])

-- vim
local coq = require('coq')
-- vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
