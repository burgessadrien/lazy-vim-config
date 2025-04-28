return {
  {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
      require("themery").setup({
        themes = {
          {
            name = "tokyotonight",
            before = [[vim.opt.background = "dark"]]
        }
      },
      livePreview = true
      })
    end
  }
}
