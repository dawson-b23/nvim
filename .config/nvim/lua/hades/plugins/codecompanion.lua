return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
		"ravitemer/mcphub.nvim",
	},
	config = function()
		require("codecompanion").setup({
			adapters = {
				ollama = function()
					return require("codecompanion.adapters").extend("ollama", {
						env = {
							url = "http://100.125.105.38:11434", -- Replace with your Tailscale hostname/IP
						},
						schema = {
							model = {
								default = "devstral:24b", -- Ensure this model is pulled on the server
							},
							num_ctx = {
								default = 20000, -- Context window; adjust if needed
							},
						},
					})
				end,
			},
			strategies = {
				chat = {
					adapter = "ollama",
				},
				inline = {
					adapter = "ollama",
				},
				agent = {
					adapter = "ollama",
				},
			},
			extensions = {
				mcphub = {
					callback = "mcphub.extensions.codecompanion",
					opts = {
						make_vars = true,
						make_slash_commands = true,
						show_result_in_chat = true,
					},
				},
			},
			opts = {
				log_level = "WARN", -- Keep for troubleshooting; change to "INFO" later
			},
			display = {
				diff = {
					enabled = true,
					provider = "mini.diff",
				},
			},
		})
		vim.keymap.set({ "n", "v" }, "<leader>ac", "<cmd>CodeCompanionChat<cr>", { desc = "Open CodeCompanion Chat" })
		vim.keymap.set(
			{ "n", "v" },
			"<leader>aa",
			"<cmd>CodeCompanionActions<cr>",
			{ desc = "CodeCompanion Actions Palette" }
		)
		vim.keymap.set({ "n", "v" }, "<leader>ai", "<cmd>CodeCompanion<cr>", { desc = "CodeCompanion Picker" })
		vim.keymap.set("v", "<leader>as", "<cmd>CodeCompanionAdd<cr>", { desc = "Add Selection to Chat" })
		vim.keymap.set("n", "<leader>at", "<cmd>CodeCompanionChat Toggle<cr>", { desc = "Toggle Chat Buffer" })
	end,
}
