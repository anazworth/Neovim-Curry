-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

keymap.set("i", "kj", "<Esc><right>", {})
keymap.set("c", "kj", "<Esc><right>", {})

-- Increment and decrement numbers
keymap.set("n", "+", function()
	require("dial.map").manipulate("increment", "normal")
end, {})
keymap.set("n", "-", function()
	require("dial.map").manipulate("decrement", "normal")
end, {})
keymap.set("v", "+", function()
	require("dial.map").manipulate("increment", "visual")
end, {})
keymap.set("v", "-", function()
	require("dial.map").manipulate("decrement", "visual")
end, {})

-- Todo-Comments
keymap.set("n", "<leader>tq", ":TodoQuickFix<CR>")
keymap.set("n", "<leader>tt", ":TodoTelescope<CR>")
