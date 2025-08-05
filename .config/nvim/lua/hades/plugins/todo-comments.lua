return {
	"folke/todo-comments.nvim",
	event = { "BufReadPre", "BufNewFile" },
	cmd = { "TodoTrouble", "TodoTelescope" },
	opts = {},
  -- stylua: ignore
  keys = {
    --{ "<leader>xn", function() require("todo-comments").jump_next() end, desc = "Next Todo Comment" },
    --{ "<leader>xp", function() require("todo-comments").jump_prev() end, desc = "Previous Todo Comment" },
    { "<leader>xt", "<cmd>Trouble todo toggle<cr>", desc = "Todo (Trouble)" },
    --{ "<leader>xT", "<cmd>Trouble todo toggle filter = {tag = {TODO,FIX,FIXME}}<cr>", desc = "Todo/Fix/Fixme (Trouble)" },
    { "<leader>xf", "<cmd>TodoTelescope<cr>", desc = "Todo" },
    --{ "<leader>sT", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>", desc = "Todo/Fix/Fixme" },
  },
}
