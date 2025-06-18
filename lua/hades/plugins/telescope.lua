return {
  "nvim-telescope/telescope.nvim",
  lazy = false,
  -- replace all Telescope keymaps with only one mapping
  keys = function()
    return {
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    }
  end,
}
