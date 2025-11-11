return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				msterraformlsp = {
					cmd = {
						"ms-terraform-lsp",
						"serve",
					},
					filetypes = {
						"terraform",
						"terraform-vars",
					},
					root_markers = {
						".terraform",
						".git",
					},
				},
			},
		},
	},
}
