return {
	{
		"cappyzawa/telescope-terraform.nvim",
		keys = {
			{
				"<leader>tf",
				function()
					require("telescope").extensions.terraform.terraform()
				end,
				desc = "Telescope Terraform",
			},
		},
	},
}
