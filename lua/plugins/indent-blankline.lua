return {
	{
		"lukas-reineke/indent-blankline.nvim",
		opts = function()
			Snacks.toggle({
				name = "Indention Guides",
				get = function()
					return require("ibl.config").get_config(0).enabled
				end,
				set = function(state)
					require("ibl").setup_buffer(0, { enabled = state })
				end,
			}):map("<leader>ug")

			local highlight = {
				{ "IndentBlanklineIndent1", fg = "#ffffff" },
				{ "IndentBlanklineIndent2", fg = "#ff62d4" },
				{ "IndentBlanklineIndent3", fg = "#3fdfd0" },
				{ "IndentBlanklineIndent4", fg = "#fba849" },
				{ "IndentBlanklineIndent5", fg = "#9f80ff" },
				{ "IndentBlanklineIndent6", fg = "#4fe42f" },
				{ "IndentBlanklineIndent7", fg = "#fe6060" },
				{ "IndentBlanklineIndent8", fg = "#4fafff" },
			}
			local hooks = require("ibl.hooks")
			hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
				for _, hl in ipairs(highlight) do
					vim.api.nvim_set_hl(0, hl[1], { fg = hl.fg })
				end
			end)

			local highlight_names = {}
			for _, hl in ipairs(highlight) do
				table.insert(highlight_names, hl[1])
			end

			vim.g.rainbow_delimiters = {
				highlight = highlight_names,
			}

			hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
			require("ibl").setup()

			return {
				indent = {
					char = "│",
					tab_char = "│",
				},
				scope = {
					show_start = false,
					show_end = false,
					highlight = highlight_names,
				},
				exclude = {
					filetypes = {
						"Trouble",
						"alpha",
						"dashboard",
						"help",
						"lazy",
						"mason",
						"neo-tree",
						"notify",
						"snacks_dashboard",
						"snacks_notif",
						"snacks_terminal",
						"snacks_win",
						"toggleterm",
						"trouble",
					},
				},
			}
		end,
		enabled = true,
	},
}
