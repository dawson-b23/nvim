return {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
        opts.ensure_installed = {
            "bash",
            "html",
            "javascript",
            "json",
            "lua",
            "markdown",
            "markdown_inline",
            "python",
            "query",
            "regex",
            "tsx",
            "typescript",
            "vim",
            "yaml",
            "latex",
            "bibtex",
            "python",
        }
        if type(opts.ensure_installed) == "table" then
            vim.list_extend(opts.ensure_installed, { "bibtex" })
        end
        if type(opts.highlight.disable) == "table" then
            vim.list_extend(opts.highlight.disable, { "latex" })
        else
            opts.highlight.disable = { "latex" }
        end
    end,
}
