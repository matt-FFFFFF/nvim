---@type vim.lsp.Config
return {
	cmd = { "ms-terraform-lsp", "serve" },
	filetypes = { "terraform", "terraform-vars" },
	root_markers = { ".terraform", ".git" },
}
