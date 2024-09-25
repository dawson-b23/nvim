vim.g.mapleader = " "
--vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- moving highlighted blocks of code around w auto indent
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- appends line below to cur, not moveing cursor
vim.keymap.set("n", "J", "mzJ`z")

-- half page jumping, keep cursor in middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- same but for search terms
--vim.keymap.set("n", "n", "nzzzv")
--vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever, deletes highlighted word to void reg
--vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- plus reg / sys clip for cpy
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- same but for deleting to void reg
--vim.keymap.set({"n", "v"}, "<leader>d", [["_d]], {desc = "delet to void registe"})

-- to make sure ctrl c exits
vim.keymap.set("i", "<C-c>", "<Esc>")

-- never press Q lol
vim.keymap.set("n", "Q", "<nop>")

-- global file search
--vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

--for LSP
--vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- quickfix nav
--vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
--vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
--vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- replce word your on in file
-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], {desc = "replace selected word in file"})

-- makes files executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { desc = "makes file exectuable" }, { silent = true })

vim.keymap.set("n", "<leader><leader>", "<cmd>so<CR>", { desc = "execute so cmd" })

-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "split window vertically" }) -- split vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "split window horizontally" }) -- split horizontally
vim.keymap.set("n", "<leader>se", "<C-w>-", { desc = "split window equal size" }) -- split windows equal size
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "close split window" }) -- close current split

-- tab management
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "open new tab" }) -- open new tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "close current tab" }) --  close current tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "goto next tab" }) -- goto next tab
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "goto prev tab" }) -- goto previous tab
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "open buf in new tab" }) -- open current buffer in new tab
