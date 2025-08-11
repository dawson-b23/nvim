# Dawson's Neovim Configuration

This is a customized Neovim setup built on [LazyVim](https://github.com/LazyVim/LazyVim) plug-in manager, designed for productivity, modern development, and note-taking. It combines a powerful plugin ecosystem with tailored settings for coding, LaTeX editing, and Markdown workflows.

## Features

- **Plugin Management**: Uses [lazy.nvim](https://github.com/folke/lazy.nvim) for fast, lazy-loaded plugins.
- **Theming**: Configured with [tokyonight.nvim](https://github.com/folke/tokyonight.nvim.
- **Language Support**: Enhanced for Bash, HTML, JavaScript, JSON, Lua, Markdown, Python, Rust, LaTeX, BibTeX, C, and more via Treesitter and LSP.
- **LaTeX Workflow**: Full support with [vimtex](https://github.com/lervag/vimtex), using Zathura for viewing and `latexmk` for compilation.
- **Obsidian Integration**: Markdown note-taking with [obsidian.nvim](https://github.com/epwalsh/obsidian.nvim), tied to a personal vault at `~/Obsidian_sync/`.
- **Code Editing**: Autocompletion with [blink.cmp](https://github.com/saghen/blink.cmp), snippets via [LuaSnip](https://github.com/LuaSnip/LuaSnip), and commenting with [Comment.nvim](https://github.com/numToStr/Comment.nvim).
- **Navigation**: Undo history with [telescope-undo.nvim](https://github.com/debugloop/telescope-undo.nvim), file jumping with [harpoon](https://github.com/ThePrimeagen/harpoon), and more.
- **Extras**:  

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


## License

Licensed under the [Apache License 2.0](LICENSE). See the [LICENSE](LICENSE) file for details.

## Contributing

Fork this repo and adapt it to your needs! Issues and pull requests are welcome on GitHub.
