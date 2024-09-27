return {
	"ThePrimeagen/harpoon",
	--emabled = true,
	branch = "harpoon2",
	dependencies = {
		"nvim-lua/plenary.nvim",
		-- "nvim-telescope/telescope.nvim",
	},
	config = function()
		-- require("harpoon"):setup()
		--end,
		-- REQUIRED
		-- harpoon:setup()
		-- REQUIRED
		--keys = {
		local harpoon = require("harpoon")
		harpoon:setup()
		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end, { desc = "add file to harpoon" })
		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)

		vim.keymap.set("n", "<C-m>", function()
			harpoon:list():select(1)
		end)
		vim.keymap.set("n", "<C-t>", function()
			harpoon:list():select(2)
		end)
		vim.keymap.set("n", "<C-n>", function()
			harpoon:list():select(3)
		end)
		vim.keymap.set("n", "<C-s>", function()
			harpoon:list():select(4)
		end)

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<C-S-P>", function()
			harpoon:list():prev()
		end, { desc = "harpoon previous list" })
		vim.keymap.set("n", "<C-S-N>", function()
			harpoon:list():next()
		end, { desc = "harpoon next list" })

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
