# Dawson's Neovim Configuration

This is a customized Neovim setup built on [LazyVim](https://github.com/LazyVim/LazyVim), designed for productivity, modern development, and note-taking. It combines a powerful plugin ecosystem with tailored settings for coding, LaTeX editing, and Markdown workflows.

## Features

- **Plugin Management**: Uses [lazy.nvim](https://github.com/folke/lazy.nvim) for fast, lazy-loaded plugins.
- **Theming**: Configured with [gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim) as the primary colorscheme, with [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) as a fallback.
- **Language Support**: Enhanced for Bash, HTML, JavaScript, JSON, Lua, Markdown, Python, Rust, LaTeX, BibTeX, and more via Treesitter and LSP.
- **LaTeX Workflow**: Full support with [vimtex](https://github.com/lervag/vimtex), using Zathura for viewing and `latexmk` for compilation.
- **Obsidian Integration**: Markdown note-taking with [obsidian.nvim](https://github.com/epwalsh/obsidian.nvim), tied to a personal vault at `~/Obsidian_sync/`.
- **Code Editing**: Autocompletion with [blink.cmp](https://github.com/saghen/blink.cmp), snippets via [LuaSnip](https://github.com/LuaSnip/LuaSnip), and commenting with [Comment.nvim](https://github.com/numToStr/Comment.nvim).
- **Navigation**: Undo history with [telescope-undo.nvim](https://github.com/debugloop/telescope-undo.nvim), file jumping with [harpoon](https://github.com/ThePrimeagen/harpoon), and more.
- **Extras**: Includes LazyVim extras for Go, JSON, Markdown, Python, Rust, TeX, TOML, and tools like `yanky` and `snacks.nvim`.

## Installation

### Prerequisites
- Neovim (v0.9.0 or later recommended).
- Git for cloning the repository.
- [Zathura](https://pwmt.org/projects/zathura/) (for LaTeX viewing with `vimtex`).
- A Nerd Font (optional, for icons with `mini.icons`).

### Steps
1. Clone the repository:
   ```bash
   git clone https://github.com/dawson-b23/nvim.git ~/.config/nvim
   ```

2. Launch Neovim 
  ```bash
    nvim 
   ```
LazyVim will bootstrap lazy.nvim and install plugins automatically on first run.

4. Customize by editing lua/plugins/ for additional plugins or lua/config/keymaps.lua for keybindings.

See the [LazyVim](http://www.lazyvim.org) docs for more setup details.

## Configuration Highlights

- **Indentation**: 4 spaces, 120-column width.
- **Plugins**: Locked to specific commits in `lazy-lock.json` for stability.
- **Treesitter**: Ensures syntax highlighting for multiple languages, with LaTeX highlighting disabled to avoid conflicts with `vimtex`.
- **LSP**: Configured with `texlab` for LaTeX, extensible via `nvim-lspconfig`.
- **Keymaps**:
  - `<leader>u`: Opens Telescope’s undo history.
  - `<C-y>`, `<C-j>`, `<C-k>`: Custom autocompletion controls with `blink.cmp`.

### Directory Structure
- `lua/config/lazy.lua`: Initializes LazyVim and plugins.
- `lua/plugins/`: Custom plugin configurations (e.g., `vimtex`, `obsidian.nvim`).
- `lua/config/options.lua`: Extends LazyVim’s default options.
- `lua/config/keymaps.lua`: Custom keymaps.
- `lua/config/autocmds.lua`: Custom autocommands.

## Key Plugins

- **Coding**: `nvim-treesitter`, `blink.cmp`, `Comment.nvim`, `conform.nvim`.
- **LaTeX**: `vimtex` (with Zathura and `latexmk` integration).
- **Markdown**: `obsidian.nvim`, `markdown-preview.nvim`.
- **Navigation**: `telescope.nvim`, `telescope-undo.nvim`, `harpoon`.
- **Theming**: `gruvbox.nvim`, `tokyonight.nvim`, `catppuccin`.
- **Utilities**: `which-key.nvim`, `gitsigns.nvim`, `trouble.nvim`.

Full plugin list in `lazy-lock.json`.

## Usage Tips

- **LaTeX**: Use `:VimtexCompile` to build documents; output goes to `./.latexmk/out/`.
- **Obsidian**: Open Markdown files in `~/Obsidian_sync/` to leverage vault features.
- **Undo History**: Press `<leader>u` to browse and revert changes.
- **Customization**: Add plugins to `lua/plugins/` or tweak settings in `lua/config/`.

## License

Licensed under the [Apache License 2.0](LICENSE). See the [LICENSE](LICENSE) file for details.

## Contributing

Fork this repo and adapt it to your needs! Issues and pull requests are welcome on GitHub.
