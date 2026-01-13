-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    -- change colorscheme
    colorscheme = "everforest",
    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    highlights = {
      init = { -- this table overrides highlights in all themes
        -- Normal = { bg = "#000000" },
        Comment = { italic = true },
        Keyword = { italic = true },
        Function = { italic = true },
        Identifier = { italic = true },
        Type = { italic = true },
        Statement = { italic = true },
        Conditional = { italic = true },
        Repeat = { italic = true },
        Operator = { italic = true },
        Constant = { italic = true },
        String = { italic = true },

        -- Treesitter 组
        ["@comment"] = { italic = true },
        ["@keyword"] = { italic = true },
        ["@keyword.function"] = { italic = true },
        ["@keyword.return"] = { italic = true },
        ["@conditional"] = { italic = true },
        ["@repeat"] = { italic = true },
        ["@function"] = { italic = true },
        ["@type"] = { italic = true },
        ["@variable"] = { italic = true },
        ["@variable.parameter"] = { italic = true },

        -- LSP semantic tokens
        ["@lsp.type.class"] = { italic = true },
        ["@lsp.type.enum"] = { italic = true },
        ["@lsp.type.interface"] = { italic = true },
        ["@lsp.type.parameter"] = { italic = true },
        ["@lsp.type.property"] = { italic = true },
        ["@lsp.type.variable"] = { italic = true },
        ["@lsp.type.function"] = { italic = true },
      },
      astrodark = { -- a table of overrides/changes when applying the astrotheme theme
        -- Normal = { bg = "#000000" },
      },
    },
    -- Icons can be configured throughout the interface
    icons = {
      -- configure the loading of the lsp in the status line
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },
  },
}
