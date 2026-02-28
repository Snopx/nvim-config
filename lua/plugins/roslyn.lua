return {
  {
    "seblyng/roslyn.nvim",
    opts = {
      filewatching = "auto",
      broad_search = true,
      lock_target = false,
      silent = false,
    },
    config = function(_, opts)
      require("roslyn").setup(opts)

      -- ⭐ AstroNvim v5 的 LSP 注册方式
      vim.lsp.config("roslyn", {
        on_attach = function(client, bufnr)
          local map = function(mode, lhs, rhs, desc) vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc }) end

          -- ⭐ 你要的跳转键位
          map("n", "gd", vim.lsp.buf.definition, "Go to definition")
          map("n", "gD", vim.lsp.buf.declaration, "Go to declaration")
          -- map("n", "gi", vim.lsp.buf.implementation, "Go to implementation")
          -- map("n", "gr", vim.lsp.buf.references, "Go to references")
          -- map("n", "K", vim.lsp.buf.hover, "Hover documentation")
          -- map("n", "<leader>rn", vim.lsp.buf.rename, "Rename symbol")
        end,

        settings = {
          ["csharp|inlay_hints"] = {
            csharp_enable_inlay_hints_for_implicit_object_creation = true,
            csharp_enable_inlay_hints_for_implicit_variable_types = true,
            csharp_enable_inlay_hints_for_lambda_parameter_types = true,
            csharp_enable_inlay_hints_for_types = true,
            dotnet_enable_inlay_hints_for_parameters = true,
          },
          ["csharp|code_lens"] = {
            dotnet_enable_references_code_lens = true,
            dotnet_enable_tests_code_lens = true,
          },
          ["csharp|formatting"] = {
            dotnet_organize_imports_on_format = true,
          },
        },
      })
    end,
  },
}
