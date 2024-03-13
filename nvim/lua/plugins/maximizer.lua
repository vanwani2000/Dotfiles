return {
  "declancm/maximize.nvim",
  config = function()
    local max = require("maximize")
    require("maximize").setup()
    vim.keymap.set("n", "<Leader>m", max.toggle, {})
  end,
}
