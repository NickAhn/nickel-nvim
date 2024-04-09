vim.g.mapleader = " "
-- remap explorer command to pv --
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move selected lines up/down
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")

-- Keep cursor in the middle while searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nnzzzv")

-- paste without rewriting register
vim.keymap.set("x", "<leader>p", "\"_dP")

