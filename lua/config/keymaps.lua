vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Delete current buffer" })
-- yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank line to system clipboard" })
-- delete to void register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete to void register" })
-- Q is noop
vim.keymap.set("n", "Q", "<nop>", { desc = "Disable Q (ex mode)" })
-- center search results
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result (centered)" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result (centered)" })
-- move visual block up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move visual block down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move visual block up" })
vim.keymap.set("n", "<C-S-K>", "<cmd>cnext<CR>zz", { desc = "Next quickfix item (centered)" })
vim.keymap.set("n", "<C-S-J>", "<cmd>cprev<CR>zz", { desc = "Previous quickfix item (centered)" })
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "Next location list item (centered)" })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "Previous location list item (centered)" })
-- replace word under cursor
vim.keymap.set(
  "n",
  "<leader>S",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Replace word under cursor" }
)
-- buffer navigation
vim.keymap.set("n", "<S-h>", "<cmd>bprevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<S-l>", "<cmd>bnext<CR>", { desc = "Next buffer" })
-- up/down is centered
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down (centered)" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up (centered)" })

-- Delete all diagnostics
vim.keymap.set("n", "<leader>xD", function()
  vim.diagnostic.reset()
  vim.cmd("LspRestart")
  vim.cmd("edit")
end, { desc = "Delete all diagnostics and restart LSP" })
