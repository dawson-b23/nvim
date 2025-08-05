local opt = vim.opt

-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- line num
opt.nu = true
opt.number = true -- Print line number
opt.relativenumber = true -- Relative line numbers

-- tabs/ident
opt.expandtab = true -- Use spaces instead of tabs
opt.tabstop = 2 -- Number of spaces tabs count for
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.autoindent = true -- copy indent from current line when starting new one

-- Hide deprecation warnings
vim.g.deprecation_warnings = false

-- clipboard for ssh
opt.clipboard = "unnamedplus"

-- colors and style
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark

opt.conceallevel = 2 -- Hide * markup for bold and italic, but not markers with substitutions
opt.confirm = true -- Confirm to save changes before exiting modified buffer
opt.cursorline = true -- Enable highlighting of the current line
opt.grepprg = "rg --vimgrep"
opt.ignorecase = true -- Ignore case
opt.laststatus = 3 -- global statusline
opt.linebreak = true -- Wrap lines at convenient points
opt.mouse = "a" -- Enable mouse mode
opt.ruler = false -- Disable the default ruler
opt.scrolloff = 4 -- Lines of context
opt.showmode = false -- Dont show mode since we have a statusline
opt.sidescrolloff = 8 -- Columns of context
opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
opt.smartcase = true -- Don't ignore case with capitals
opt.spelllang = { "en" }
opt.splitkeep = "screen"
opt.splitright = true -- Put new windows right of current
opt.undofile = true
opt.undolevels = 10000
opt.virtualedit = "block" -- Allow cursor to move where there is no text in visual block mode
opt.wrap = false -- Disable line wrap

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0

opt.updatetime = 50

-- vim.opt.colorcolumn = "80"

-- turn off swapfile
opt.swapfile = false
