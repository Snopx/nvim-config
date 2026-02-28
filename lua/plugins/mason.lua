-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Mason

---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  -- {
  --   "WhoIsSethDaniel/mason-tool-installer.nvim",
  --   -- overrides `require("mason-tool-installer").setup(...)`
  --   opts = {
  --     -- Make sure to use the names found in `:Mason`
  --     ensure_installed = {
  --       -- install language servers
  --       "lua-language-server",
  --
  --       -- install formatters
  --       "stylua",
  --
  --       -- install debuggers
  --       "debugpy",
  --
  --       -- install any other package
  --       "tree-sitter-cli",
  --     },
  --   },
  -- },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      -- 添加自定义注册表，其中包含 roslyn 包
      opts.registries = {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry", -- 这个仓库包含了 roslyn
      }
    end,
  },
}
