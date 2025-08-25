-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jj", "<Esc>", { silent = true })
vim.keymap.set("n", "<Tab>", ":bn<CR>", { silent = true })
vim.keymap.set("n", "<S-Tab>", ":bN<CR>", { silent = true })
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<Leader><Leader>", "<C-^>")

vim.keymap.set("n", "<Leader>ap", function()
  Snacks.explorer.reveal()
end, { noremap = true })
vim.keymap.set("n", "<Leader>at", function()
  Snacks.terminal(nil, { cwd = LazyVim.root() })
end, { noremap = true })
vim.keymap.set("n", "<Leader>dm", ":delmarks a-zA-Z0-9<CR>")
vim.keymap.set("n", "<Leader>h", ":only<CR>")
vim.keymap.set("n", "<Leader>q", ":q<CR>", { noremap = true })
vim.keymap.set("n", "<Leader>w", ":w<CR>", { noremap = true })
