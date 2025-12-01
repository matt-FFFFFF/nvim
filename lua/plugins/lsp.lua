local util = require("lspconfig.util")
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        copilot = {
          keys = {
            {
              "<Tab>",
              false,
              mode = { "i" },
            },
          },
        },
        ghactions = {
          cmd = { "gh-actions-language-server", "--stdio" },
          filetypes = { "yaml" },
          root_dir = util.root_pattern(".github"),
          single_file_support = true,
        },
        msterraformlsp = {
          cmd = {
            "ms-terraform-lsp",
            "serve",
          },
          filetypes = {
            "terraform",
            "terraform-vars",
          },
          root_markers = {
            ".terraform",
            ".git",
          },
        },
      },
    },
  },
}
