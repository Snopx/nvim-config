if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {

  -- 光标样式 + 闪烁 + 模式切换
  {
    "AstroNvim/astrocore",
    opts = {
      options = {
        opt = {
          guicursor = {
            -- 普通模式：方块 + 闪烁
            "n-v-c:block-blinkwait700-blinkoff400-blinkon250",

            -- 插入模式：竖线 + 闪烁
            "i-ci-ve:ver25-blinkwait700-blinkoff300-blinkon200",

            -- 替换模式：横线
            "r-cr:hor20",

            -- 操作等待模式
            "o:hor50",
          },
        },
      },
    },
  },

  -- 平滑滚动（终端可实现）
  {
    "karb94/neoscroll.nvim",
    event = "VeryLazy",
    config = function()
      require("neoscroll").setup {
        easing_function = "quadratic",
        hide_cursor = false,
        stop_eof = true,
        respect_scrolloff = true,
        duration = 10, -- 关键：让滚动丝滑但不拖沓
      }
    end,
  },
}
