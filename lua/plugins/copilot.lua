return {
	{
		"github/copilot.vim",
		keys = {
			{ "<S-Tab>", mode = { "i" }, 'copilot#Accept("\\<S-Tab>")', { expr = true, replace_keycodes = false } },
		},
		config = function()
			vim.cmd("Copilot enable")
			-- disable tab
			vim.g.copilot_no_tab_map = true
		end,
	},
}
