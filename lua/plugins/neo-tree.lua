return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    source_selector = {
      winbar = false,
      statusline = true,
    },
    filesystem = {
      filtered_items = {
        visible = false,
        hide_dotfiles = false,
        hide_gitignored = false,
        never_show = {
          ".git",
        },
        always_show = { -- remains visible even if other settings would normally hide it
          ".vitepress",
          ".env",
          ".env.*",
        },

        -- always_show_by_pattern = { -- uses glob style patterns
        --   ".env",
        -- },

        -- hide_by_name = {
        --   ".git",
        -- },
      },
      bind_to_cwd = true,
      follow_current_file = { enabled = true },
      use_libuv_file_watcher = true,
      async_directory_scan = "always",
    },
    window = {
      width = 30,
    },
    event_handlers = {
      {
        event = "file_opened",
        handler = function()
          -- auto close
          -- vimc.cmd("Neotree close")
          -- OR
          require("neo-tree.command").execute({ action = "close" })
        end,
      },
    },
  },
}
