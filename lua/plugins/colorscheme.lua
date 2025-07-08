return {
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		opts = {
			transparent_background = true,
		},
	},
	{ "ellisonleao/gruvbox.nvim", opts = {
		transparent_mode = true,
		contrast = "soft",
	} },
	{
		"rose-pine/neovim",
		name = "rose-pine",
		opts = {
			styles = {
				transparency = true,
			},
		},
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin",
		},
	},
}
