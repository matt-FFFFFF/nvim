return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "enter",
      ["<CR>"] = { "fallback" },
      ["<S-CR>"] = { "accept", "fallback" },
      ["<S-Tab>"] = {
        LazyVim.cmp.map({ "snippet_forward", "ai_accept" }),
        "fallback",
      },
      ["<Tab>"] = { "fallback" },
    },
  },
}
