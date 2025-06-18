return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup()
    vim.keymap.set("n", "<leader>ha", function()
      harpoon:list():add()
    end, { desc = "add file to harpoon" })
    
    -- set registers 
    vim.keymap.set("n", "<leader>hm", function()
      harpoon:list():replace_at(1)
    end, { desc = "Add file to harpoon 1 reg" })
    vim.keymap.set("n", "<leader>ht", function()
      harpoon:list():replace_at(2)
    end, { desc = "Add file to harpoon 2 reg" })
    vim.keymap.set("n", "<leader>hn", function()
      harpoon:list():replace_at(3)
    end, { desc = "Add file to harpoon 3 reg" })
    vim.keymap.set("n", "<leader>hs", function()
      harpoon:list():replace_at(4)
    end, { desc = "Add file to harpoon 4 reg" })

    -- open menu 
    vim.keymap.set("n", "<leader>he", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = "open harpoon menu" })

    -- swap to register
    vim.keymap.set("n", "<leader>jj", function()
      harpoon:list():next()
    end, { desc = "Jump to next harpoon reg" })
    vim.keymap.set("n", "<leader>kk", function()
      harpoon:list():prev()
    end, { desc = "Jump to prev harpoon reg" })

    vim.keymap.set("n", "<leader><C-m>", function()
      harpoon:list():select(1)
    end, { desc = "Jump to harpoon reg 1" })
    vim.keymap.set("n", "<leader><C-t>", function()
      harpoon:list():select(2)
    end, { desc = "Jump to harpoon reg 1" })
    vim.keymap.set("n", "<leader><C-n>", function()
      harpoon:list():select(3)
    end, { desc = "Jump to harpoon reg 1" })
    vim.keymap.set("n", "<leader><C-s>", function()
      harpoon:list():select(4)
    end, { desc = "Jump to harpoon reg 1" })


  end,
}
