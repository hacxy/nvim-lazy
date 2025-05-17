-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--
vim.api.nvim_create_autocmd({ "InsertLeave", "InsertEnter" }, {
  callback = function()
    local has_system_command = vim.fn.executable("im-select") == 1
    if has_system_command then
      os.execute("im-select com.apple.keylayout.ABC")
    end
  end,
})
