-- return {
--   "folke/tokyonight.nvim",
--   priority = 1000,
--   lazy = false,
--   config = function()
--     require("tokyonight").setup({
--       style = "night",
--       transparent = false,
--       styles = {
--         sidebars = "transparent", --or "dark",
--         floats = "transparent", --or "dark",
--       },
--     })
--
--     vim.cmd("colorscheme tokyonight-night")
--   end,
-- }

--return {
--	"dgox16/oldworld.nvim",
--	lazy = false,
--	priority = 1000,
--	config = function()
--		vim.cmd.colorscheme("oldworld")
--	end,
--}

--  {
--  "rebelot/kanagawa.nvim",
--  priority = 1000,
--  lazy = false,
--  config = function()
--    vim.cmd("colorscheme kanagawa-wave") -- dragon or wave
--  end,
--}
--
--
-- lua/plugins/rose-pine.lua
-- return {
-- 	"rose-pine/neovim",
-- 	name = "rose-pine",
-- 	config = function()
-- 		vim.cmd("colorscheme rose-pine-moon")
-- 	end
-- }

--return {
--	"olimorris/onedarkpro.nvim",
--	priority = 1000, -- Ensure it loads first
--	lazy = false,
--	config = function()
--		vim.cmd("colorscheme onedark")
--	end,
--}
--
--return {
--	"marko-cerovac/material.nvim",
--	priority = 1000,
--	lazy = false,
--	config = function()
--		vim.cmd("colorscheme material-darker")
--	end,
--}
--return {
--	"Mofiqul/dracula.nvim",
--	priority = 1000,
--	lazy = false,
--	config = function()
--		vim.cmd("colorscheme dracula")
--	end,
--}
return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		vim.cmd("colorscheme catppuccin-mocha")
	end,
}
