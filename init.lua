if (vim.g.vscode) then
    -- keybind for vscode
    -- set space as leader key
    vim.g.mapleader = " "
    -- toggle vscode terminal with <leader> t
    vim.keymap.set("n", "<leader>t", "<cmd>call VSCodeNotifyVisual('workbench.action.terminal.toggleTerminal', 1)<CR>", {})
    vim.keymap.set("n", "<leader>e", "<cmd>call VSCodeNotifyVisual('workbench.view.explorer', 1)<CR>", {})
    vim.keymap.set("n", "<leader>ff", "<cmd>call VSCodeNotify('workbench.action.quickOpenNavigateNextInFilePickerr', 1)<CR>", {})
else
-- bootstrap lazy.nvim, LazyVim and your plugins
    require("config.lazy")
end