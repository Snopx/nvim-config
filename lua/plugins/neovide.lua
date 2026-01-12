return {
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["<C-c>"] = '"+y', -- Normal 模式复制到系统剪贴板
          ["<C-v>"] = '"+p', -- Normal 模式粘贴
        },
        i = {
          ["<C-v>"] = "<C-r>+", -- Insert 模式粘贴
        },
        v = {
          ["<C-c>"] = '"+y', -- Visual 模式复制
          ["<C-v>"] = '"+p', -- Visual 模式粘贴
        },
      },
      options = {
        g = {
          neovide_fullscreen = true,
        },
        opt = {
          background = "dark",
        },
      },
    },
  },
}
