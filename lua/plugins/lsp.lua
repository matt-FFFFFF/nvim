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
