-- Re-apply transparent background after every colorscheme change.
-- Colorschemes overwrite Normal/NormalFloat highlights with their own bg,
-- so a one-shot fix at startup is not enough — this autocmd fires on every switch.
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "Normal",      { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC",    { bg = "none" })
  end,
})
