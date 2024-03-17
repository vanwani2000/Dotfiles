return {
  {
    "numToStr/Comment.nvim",
    event = { "BufEnter" },
    dependencies = {
      "JoosepAlviste/nvim-ts-context-commentstring",
      config = function()
        ---@diagnostic disable-next-line: missing-fields
        require("ts_context_commentstring").setup({
          enable_autocmd = false,
        })
      end,
    },
    config = function()
      -- Comment configuration object _can_ take a partial and is merged in
      ---@diagnostic disable-next-line: missing-fields
      require("Comment").setup({
        pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
      })

      local ft = require("Comment.ft")
      ft.set("reason", { "//%s", "/*%s*/" })

      local api = require("Comment.api")

      vim.keymap.set("v", "<C-_>", api.call("toggle.linewise", "g@"), { expr = true })
      vim.keymap.set("i", "<C-_>", api.toggle.linewise.current)
    end,
  },
}
