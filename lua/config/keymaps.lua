-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

keymap.set("i", "kj", "<Esc>", {})
keymap.set("c", "kj", "<Esc>", {})

-- Increment and decrement numbers
keymap.set("n", "+", "<C-a>", {})
keymap.set("n", "-", "<C-x>", {})
