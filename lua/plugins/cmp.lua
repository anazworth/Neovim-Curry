return {
	"hrsh7th/nvim-cmp",
	opts = function(_, opts)
		local cmp = require("cmp")
		opts.mapping = vim.tbl_deep_extend("force", opts.mapping, {
			["<C-y>"] = cmp.mapping.confirm({ select = true }),
			["<C-e>"] = cmp.mapping.close(),
			["<CR>"] = cmp.config.disable,
		})
	end,
}
