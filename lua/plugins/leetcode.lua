return {
  {
    "kawre/leetcode.nvim",
    dependencies = {
      "folke/snacks.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      lang = "csharp", -- 默认语言，可改成 python / rust / go / typescript
      cn = {
        enabled = true,
        translater = true,
        translate_problems = true,
      },
      injector = {
        ["csharp"] = {
          before = {
            "using System;",
            "using System.Collections.Generic;",
            "using System.Linq;",
            "using System.Text;",
            "using System.Threading.Tasks;",
            "",
          },
          after = { "", "// Powered by Darren's Nvim C# Template" },
        },
        ["rust"] = {
          before = {
            "use std::collections::*;",
            "use std::cmp::*;",
            "use std::io::*;",
            "",
            "struct Solution;",
            "",
          },
          after = { "", "// Powered by Darren's Rust Template" },
        },
      },
      storage = {
        home = vim.fn.stdpath "data" .. "/leetcode",
        cache = vim.fn.stdpath "cache" .. "/leetcode",
      },
      description = {
        position = "right",
      },
    },
  },
}
