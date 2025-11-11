return {
	"saghen/blink.cmp",
	opts = {
		keymap = {
			preset = "enter",
			["<S-Tab>"] = {
				LazyVim.cmp.map({ "snippet_forward", "ai_accept" }),
				"fallback",
			},
			["<Tab>"] = { "select_next", "fallback" },
		},
	},
}
