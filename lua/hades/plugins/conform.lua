return {
  "stevearc/conform.nvim",
  opts = {},
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "ruff"},
        rust = { "rustfmt", lsp_format = "fallback" },
      },
    })
  end
}
