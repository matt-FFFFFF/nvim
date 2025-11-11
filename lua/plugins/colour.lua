function ColorMe(color)
	color = color or "onedark"

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
end
return {
	{
		"olimorris/onedarkpro.nvim",
		config = function()
			require("onedarkpro").setup({})
			ColorMe()
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "onedark",
		},
	},
}
