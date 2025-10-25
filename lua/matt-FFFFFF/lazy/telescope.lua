return {
	"nvim-telescope/telescope.nvim",

	tag = "0.1.8",

	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	config = function()
		require("telescope").setup({})

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
		vim.keymap.set("n", "<C-p>", builtin.git_files, {})
		vim.keymap.set("n", "<leader>pws", function()
			local word = vim.fn.expand("<cword>")
			builtin.grep_string({ search = word })
		end)
		vim.keymap.set("n", "<leader>pWs", function()
			local word = vim.fn.expand("<cWORD>")
			builtin.grep_string({ search = word })
		end)
		vim.keymap.set("n", "<leader>ps", builtin.live_grep, { desc = "Telescope live grep" })
		vim.keymap.set("n", "<leader>vh", builtin.help_tags, { desc = "Telescope help tags" })
		vim.keymap.set("n", "<leader>pp", builtin.treesitter, { desc = "Telescope treesitter" })
		vim.keymap.set("n", "<leader>pb", builtin.buffers, { desc = "Telescope buffers" })
		vim.keymap.set("n", "<leader>plr", builtin.lsp_references, { desc = "Telescope LSP references" })
		vim.keymap.set("n", "<leader>pli", builtin.lsp_incoming_calls, { desc = "Telescope LSP incoming calls" })
		vim.keymap.set("n", "<leader>plo", builtin.lsp_outgoing_calls, { desc = "Telescope LSP outgoing calls" })
		vim.keymap.set("n", "<leader>plp", builtin.lsp_document_symbols, { desc = "Telescope LSP document symbols" })
		vim.keymap.set("n", "<leader>plw", builtin.lsp_workspace_symbols, { desc = "Telescope LSP workspace symbols" })
	end,
}
