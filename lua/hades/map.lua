local map = vim.keymap.set
-- map("n", "<leader>pv", '<cmd>wq<cr>')
map("n", "<leader>qq", "<cmd>q!<cr>", { desc = "Force Quit" })

-- Move to window using the <ctrl> hjkl keys
map("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- buffers
map("n", "<leader><S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<leader>bc", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })

-- better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- commenting
map("n", "gco", "o<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Below" })
map("n", "gcO", "O<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Above" })

-- lazy
map("n", "<leader>L", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- new file
map("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })

-- windows
map("n", "<leader>-", "<C-W>s", { desc = "Split Window Below", remap = true })
map("n", "<leader>|", "<C-W>v", { desc = "Split Window Right", remap = true })
map("n", "<leader>wd", "<C-W>c", { desc = "Delete Window", remap = true })

-- tabs
-- map("n", "<leader>tl", "<cmd>tabnext<cr>", { desc = "Next Tab" })
-- map("n", "<leader>to", "<cmd>tabonly<cr>", { desc = "Close Other Tabs" })
-- map("n", "<leader>th", "<cmd>tabprev<cr>", { desc = "Prev Tab" })
-- map("n", "<leader>tn", "<cmd>tabnew<cr>", { desc = "New Tab" })

-- native snippets. only needed on < 0.11, as 0.11 creates these by default
if vim.fn.has("nvim-0.11") == 0 then
	map("s", "<Tab>", function()
		return vim.snippet.active({ direction = 1 }) and "<cmd>lua vim.snippet.jump(1)<cr>" or "<Tab>"
	end, { expr = true, desc = "Jump Next" })
	map({ "i", "s" }, "<S-Tab>", function()
		return vim.snippet.active({ direction = -1 }) and "<cmd>lua vim.snippet.jump(-1)<cr>" or "<S-Tab>"
	end, { expr = true, desc = "Jump Previous" })
end
