# Matt's Neovim Configuration

A modern, feature-rich Neovim configuration focused on development productivity and ergonomics.

## ✨ Features

- **Plugin Management**: [lazy.nvim](https://github.com/folke/lazy.nvim) for fast and efficient plugin management
- **LSP Support**: Full Language Server Protocol integration for code intelligence
- **Fuzzy Finding**: Telescope for fast file and text searching
- **Git Integration**: Fugitive for Git workflows
- **Code Navigation**: Harpoon for quick file switching
- **Debugging**: DAP (Debug Adapter Protocol) support
- **AI Assistance**: GitHub Copilot integration
- **Syntax Highlighting**: Treesitter for advanced syntax highlighting
- **Testing**: Neotest for running tests directly in Neovim
- **Code Formatting**: Conform for automatic code formatting
- **Visual Enhancements**: Rainbow delimiters, indent guides, and custom status line
- **Theme**: OneDark Pro with transparent background

## 📁 Structure

```
~/.config/nvim/
├── init.lua                    # Entry point
├── lua/
│   └── matt-FFFFFF/
│       ├── init.lua           # Main configuration loader
│       ├── remap.lua          # Key mappings
│       ├── set.lua            # Vim settings
│       ├── lazy_init.lua      # Lazy.nvim bootstrap
│       └── lazy/              # Plugin configurations
│           ├── colours.lua
│           ├── telescope.lua
│           ├── lsp.lua
│           ├── treesitter.lua
│           ├── harpoon.lua
│           ├── fugitive.lua
│           ├── copilot.lua
│           ├── dap.lua
│           ├── neotest.lua
│           └── ...
└── README.md
```

## 🙏 Acknowledgements

Special thanks to [ThePrimeagen](https://github.com/ThePrimeagen) for his excellent YouTube series on Neovim configuration and for publishing his own config, which served as inspiration and guidance for this setup.

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
