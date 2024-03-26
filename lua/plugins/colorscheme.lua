return {
	{
		"catppuccin/nvim",
		lazy = true,
		name = "catppuccin",
	},
	{ "ellisonleao/gruvbox.nvim" },
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin-macchiato",
		},
	},
}
