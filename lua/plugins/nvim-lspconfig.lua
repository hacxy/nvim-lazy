return {
  "neovim/nvim-lspconfig",

  opts = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()

    -- change a keymap
    -- keys[#keys + 1] = { "K", "<cmd>echo 'hello'<cr>" }
    -- disable a keymap
    keys[#keys + 1] = { "<c-k>", false, mode = "i" }

    -- add a keymap
    -- keys[#keys + 1] = { "H", "<cmd>echo 'hello'<cr>" }
  end,
  config = {
    servers = {
      stylelint_lsp = {
        settings = {
          stylelintplus = {
            autoFixOnSave = true,
            autoFixOnFormat = true,
            validateOnSave = true,
          },
        },
      },
    },
  },
}
