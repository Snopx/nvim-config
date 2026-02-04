return {
  {
    "nvim-telescope/snacks.nvim",
    keys = {
      {
        "<leader>fd",
        function()
          local find = vim.fn.input "Find: "
          if find == "" then return end

          local replace = vim.fn.input "Replace: "
          if replace == "" then return end

          -- escape for shell (rg)
          local find_escaped = vim.fn.shellescape(find)

          -- escape for vim regex
          local find_vim = find:gsub("([\\/])", "\\%1")

          -- 使用 ripgrep 搜索所有文件
          vim.cmd("cexpr systemlist('rg -n " .. find_escaped .. "')")
          vim.cmd "copen"

          -- 跨文件替换（忽略大小写 + 逐一确认）
          vim.cmd("cfdo %s/" .. find_vim .. "/" .. replace .. "/gic | update")
        end,
        desc = "Global search & replace (rg + cfdo)",
      },
    },
  },
}
