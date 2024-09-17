vim.cmd("let g:netrw_liststyle = 3") 

-- big cursor
vim.opt.guicursor = ""

-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- tabs and indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

-- for colorscheme and styling
vim.opt.termguicolors = true
vim.opt.background = "dark"

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "100"

--backspace, allows on indent, end of line or insert mode start position
-- vim.opt.backspace = "ident, eol, start"

--clipboard 
vim.opt.clipboard:append("unnamedplus") -- use system clipboard as default reg

-- split windows
vim.opt.splitright = true -- verticle window to right
vim.opt.splitbelow = true -- horizontal window to bottom
