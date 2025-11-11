# Matt's Neovim Configuration

A modern, LazyVim-based Neovim configuration optimized for development productivity across multiple languages and toolchains.

## ✨ Features

### Core Framework
- **LazyVim**: Built on top of [LazyVim](https://github.com/LazyVim/LazyVim) for a solid, batteries-included foundation
- **Plugin Management**: [lazy.nvim](https://github.com/folke/lazy.nvim) for fast, efficient plugin loading
- **Performance**: Optimized startup time with lazy loading and async operations

### Completion & AI
- **Blink.cmp**: Next-generation completion engine with superior performance
- **GitHub Copilot**: AI-powered code suggestions with chat interface (CopilotChat.nvim)
- **Smart Snippets**: LuaSnip with friendly-snippets for common code patterns

### Language Support
- **LSP**: Full Language Server Protocol support via nvim-lspconfig
- **Mason**: Automatic LSP/DAP/linter installation and management
- **Language-Specific**:
  - Go (gopls, neotest-golang, nvim-dap-go)
  - C#/OmniSharp with extended LSP support
  - Terraform/OpenTofu with dedicated LSP
  - Helm charts (helm-ls)
  - And more via Mason

### Development Tools
- **Debugging**: Full DAP (Debug Adapter Protocol) support with UI and virtual text
- **Testing**: Neotest framework with Go and VSTest adapters
- **Formatting**: Conform.nvim for automatic code formatting
- **Linting**: nvim-lint for code quality checks
- **Refactoring**: Advanced refactoring operations via refactoring.nvim

### Navigation & Search
- **Telescope**: Fuzzy finding for files, text, and more (with fzf-native, terraform extensions)
- **Harpoon**: Quick file switching and project navigation
- **Flash**: Enhanced motion and search jumping
- **Grug-far**: Advanced search and replace

### Git Integration
- **Gitsigns**: Git decorations and inline blame
- **LazyVim Git**: Built-in git integration from LazyVim

### UI Enhancements
- **Colorschemes**: OneDark Pro, Catppuccin, Tokyo Night
- **Lualine**: Customized status line
- **Bufferline**: Elegant buffer/tab management
- **Noice**: Modern UI for messages, cmdline, and popups
- **Dashboard**: Custom start screen
- **Mini Suite**: AI text objects, icons, indent scope, auto-pairs
- **Rainbow Delimiters**: Color-coded bracket matching
- **Indent Blankline**: Visual indent guides
- **Which-key**: Keybinding hints and discovery

### Productivity
- **Snacks**: Collection of useful utilities
- **Undotree**: Visual undo history
- **Todo Comments**: Highlight and search TODO/FIXME comments
- **Trouble**: Beautiful diagnostic/quickfix/location list
- **Persistence**: Session management
- **Markdown Preview**: Live preview for markdown files
- **Render Markdown**: Enhanced markdown rendering in buffer

### Editor Settings
- Relative line numbers with absolute current line
- Block cursor in all modes
- 2-space indentation
- Persistent undo with dedicated undo directory
- Unix line endings enforced
- 80-character colorcolumn
- No swap files or backups (relies on undo history)
- Blink.cmp as the completion engine (not nvim-cmp AI)

## 📁 Structure

```
~/.config/nvim/
├── init.lua                    # Entry point (loads LazyVim)
├── lua/
│   ├── config/
│   │   ├── lazy.lua           # Lazy.nvim bootstrap & setup
│   │   ├── options.lua        # Vim options and settings
│   │   ├── keymaps.lua        # Custom key mappings
│   │   └── autocmds.lua       # Auto commands
│   └── plugins/               # Plugin configurations
│       ├── blink.lua          # Completion engine config
│       ├── colour.lua         # Colorscheme settings
│       ├── lsp.lua            # LSP configurations
│       ├── lualine.lua        # Status line
│       ├── rainbow-delimiters.lua
│       ├── snacks.lua
│       ├── undotree.lua
│       └── ...
├── after/                     # After-load configs
├── lsp/                       # LSP-specific configs
├── lazy-lock.json            # Plugin version lock file
└── lazyvim.json              # LazyVim configuration
```

## 🚀 Installation

```bash
# Backup existing config
mv ~/.config/nvim ~/.config/nvim.bak

# Clone this config
git clone <your-repo-url> ~/.config/nvim

# Start Neovim - plugins will auto-install
nvim
```

## ⌨️ Key Features & Mappings

This config includes custom keymaps for improved workflow:
- `<leader>bd` - Delete current buffer
- `<leader>y` / `<leader>Y` - Yank to system clipboard
- `<leader>d` - Delete to void register (preserves clipboard)
- `<leader>S` - Replace word under cursor
- `<S-h>` / `<S-l>` - Navigate between buffers
- `J` / `K` (visual mode) - Move visual selection up/down
- `n` / `N` - Center search results
- And many more from LazyVim defaults

## 🙏 Acknowledgements

- [LazyVim](https://github.com/LazyVim/LazyVim) by Folke Lemaitre for the excellent framework
- [ThePrimeagen](https://github.com/ThePrimeagen) for Neovim configuration inspiration
- The Neovim community for amazing plugins and support

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
