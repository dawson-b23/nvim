return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			default_format_opts = {
				timeout_ms = 3000,
				async = false, -- not recommended to change
				quiet = false, -- not recommended to change
				lsp_format = "fallback", -- not recommended to change
			},

			formatters_by_ft = {
				lua = { "stylua" },
				python = { "ruff" },
				sh = { "shfmt" },
				rust = { "rustfmt", lsp_format = "fallback" },
			},
			formatters = {
				injected = { options = { ignore_errors = true } },
			},
		})
	end,
}
