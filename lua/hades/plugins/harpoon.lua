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
    
    vim.keymap.set("n", "<leader>he", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = "open harpoon menu" })

    vim.keymap.set("n", "<leader>hm", function()
      harpoon:list():select(1)
    end, { desc = "add file to reg 1 harpoon" })

    vim.keymap.set("n", "<leader>ht", function()
      harpoon:list():select(2)
    end, { desc = "add file to reg 2 harpoon" })

    vim.keymap.set("n", "<leader>hn", function()
      harpoon:list():select(3)
    end, { desc = "add file to reg 3 harpoon" })

    vim.keymap.set("n", "<leader>hs", function()
      harpoon:list():select(4)
    end, { desc = "add file to reg 4 harpoon" })


		vim.keymap.set("n", "<leader><C-m>", function()
			harpoon:list():replace_at(1)
		end, { desc = "replace harpoon 1" })
		vim.keymap.set("n", "<leader><C-t>", function()
			harpoon:list():replace_at(2)
		end, { desc = "replace harpoon 2" })
		vim.keymap.set("n", "<leader><C-n>", function()
			harpoon:list():replace_at(3)
		end, { desc = "replace harpoon 3" })
		vim.keymap.set("n", "<leader><C-s>", function()
			harpoon:list():replace_at(4)
		end, { desc = "replace harpoon 4" })
	end,
}
