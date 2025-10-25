return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			format_on_save = {
				timeout_ms = 5000,
				lsp_format = "fallback",
			},
			formatters = {
				terraform_fmt = {
					command = "terraform",
					args = { "fmt", "-" },
					stdin = true,
				},
			},
			formatters_by_ft = {
				go = { "goimports", "gofmt" },
				terraform = { "terraform_fmt" },
				json = { "prettierd" },
				yaml = { "prettierd" },
        markdown = { "prettierd" },
        html = { "prettierd" },
        css = { "prettierd" },
				lua = { "stylua" },
				["*"] = { "trim_whitespace", "trim_newlines" },
			},
		})

		vim.keymap.set("n", "<leader>f", function()
			require("conform").format({ bufnr = 0 })
		end)
	end,
}
