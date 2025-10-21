vim.g.mapleader = " "
-- pv to open netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- center screen when navigating
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- format file
vim.keymap.set('n', '<leader>ff', 'gg=G')
-- format paragraph but return cursor to original position
vim.keymap.set('n', '=ap', 'ma=ap`a')
-- paste over currently selected text without yanking it
vim.keymap.set("x", "<leader>p", "[[\"_dP]]")
-- delete into void register
vim.keymap.set({ "n", "v" }, "<leader>d", "[[\"_d]]")
-- yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Q is noop
vim.keymap.set("n", "Q", "<nop>")
