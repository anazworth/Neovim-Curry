-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

keymap.set("i", "kj", "<Esc><right>", {})
keymap.set("c", "kj", "<Esc><right>", {})

-- Increment and decrement numbers
keymap.set("n", "+", "<C-a>", {})
keymap.set("n", "-", "<C-x>", {})

-- Todo-Comments
keymap.set("n", "<leader>tq", ":TodoQuickFix<CR>")
keymap.set("n", "<leader>tt", ":TodoTelescope<CR>")
