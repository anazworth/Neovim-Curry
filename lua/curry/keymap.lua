local map = vim.api.nvim_set_keymap

map("i", "kj", "<Esc>", {})
map("c", "kj", "<Esc>", {})
map("n", "Z", ":w<CR>", {})
map("n", "ZZ", ":wq<CR>", {})

map("n", "<leader>n", ":NERDTreeFocus<CR>", {})
map("n", "<leader>c", ":Copilot panel<CR>", {})

map("n", "<leader>ff", ":Telescope find_files<CR>", {})
map("n", "<leader>fg", ":Telescope live_grep<CR>", {})
map("n", "<leader>fb", ":Telescope buffers<CR>", {})
map("n", "<leader>fh", ":Telescope help_tags<CR>", {})
map("n", "<leader>e", ":ex<CR>", {})

