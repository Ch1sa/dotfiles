vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.diagnostic.config({
      virtual_text = false,
      signs = true,
      underline = false,
      float = {
        border = "rounded",
        source = true,
      },
    })
  end,
})

vim.keymap.set("n", "gl", vim.diagnostic.open_float, { desc = "Show diagnostics" })
