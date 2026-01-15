if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
--
return {
  "stevearc/conform.nvim",
  opts = {
    format_on_save = function(bufnr)
      if vim.bo[bufnr].filetype == "cs" then return end
      return { timeout_ms = 500, lsp_fallback = true }
    end,
  },
}
