return {
  {
    "snacks.nvim",
    opts = {
      indent = {
        enabled = false,
      },
      scope = {
        enabled = true,
      },
      scroll = {
        enabled = false,
      },
      picker = {
        sources = {
          explorer = {
            hidden = true,
            ignored = true,
            exclude = { ".git", "node_modules" },
          },
        },
      },
      dashboard = {},
    },
  },
}
