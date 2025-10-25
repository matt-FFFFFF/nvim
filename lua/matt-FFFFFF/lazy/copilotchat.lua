return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "nvim-lua/plenary.nvim", branch = "master" },
		},
		build = "make tiktoken",
		opts = {
			model = "claude-sonnet-4.5", -- AI model to use
			temperature = 0.1, -- Lower = focused, higher = creative
			window = {
				layout = "vertical", -- 'vertical', 'horizontal', 'float'
				width = 0.5, -- 50% of screen width
				title = "   🤖 Copilot Chat   ",
			},
			separator = "----",
			auto_fold = true,
			auto_insert_mode = true, -- Enter insert mode when opening
			headers = {
				user = "👤 You",
				assistant = "🤖 Copilot",
				tool = "🛠️ Tool",
			},
		},
		config = {
			-- Auto-command to customize chat buffer behavior
			vim.api.nvim_create_autocmd("BufEnter", {
				pattern = "copilot-*",
				callback = function()
					vim.opt_local.relativenumber = false
					vim.opt_local.number = false
					vim.opt_local.conceallevel = 0
					-- insert mode by default
					vim.cmd("startinsert")
				end,
			}),
		},
	},
}
