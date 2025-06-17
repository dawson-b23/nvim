return {
  "folke/tokyonight.nvim",
  priority = 1000,
  lazy = false,
  config = function()
    require("tokyonight").setup({
      style = "night",
      transparent = false,
      styles = {
        sidebars = transparent and "transparent" or "dark",
        floats = transparent and "transparent" or "dark",
      },
    })

    vim.cmd("colorscheme tokyonight-night")
  end,
}
