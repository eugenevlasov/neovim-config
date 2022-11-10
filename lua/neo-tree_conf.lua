require("neo-tree").setup(
{
    window = {
          position = "right";
    },
    enable_git_status = false,
    enable_diagnostics = false,
    filesystem = {
        filtered_items= {
            hide_dotfiles = false
        },
        use_libuv_file_watcher = true
    },

  }
)
