-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jj", "<Esc>", { silent = true })
vim.keymap.set("n", "<Tab>", ":bn<CR>", { silent = true })
vim.keymap.set("n", "<S-Tab>", ":bN<CR>", { silent = true })
vim.keymap.set("n", "<Leader>q", ":q<CR>", { noremap = true })
vim.keymap.set("n", "n", "nzzzv")
