return {
  "nvim-telescope/telescope.nvim",
  lazy = false,
  -- replace all Telescope keymaps with only one mapping
  keys = function()
    return {
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Telescope Find Files" },
      { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Telescope Live Grep" },
      { "<leader>fc", "<cmd>Telescope commands<cr>", desc = "Telescope Commands" },
    }
  end,
}
