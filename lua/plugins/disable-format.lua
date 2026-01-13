return {
  "stevearc/conform.nvim",
  opts = {
    format_on_save = function(bufnr)
      if vim.bo[bufnr].filetype == "cs" then return false end
      return true
    end,
  },
}
