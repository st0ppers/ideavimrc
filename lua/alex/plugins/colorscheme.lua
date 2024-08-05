return {
	{
		"folke/tokyonight.nvim",
		priority = 1000,
		-- 	config = function()
		-- 		vim.cmd("colorscheme tokyonight")
		-- 	end,
	},
	{
		-- "mcchrish/vim-no-color-collections", -- monochrome colorscheme
		"andreasvc/vim-256noir",
		-- config = function()
		-- 	vim.cmd("colorscheme 256_noir")
		-- end,
	},
	{
		"olimorris/onedarkpro.nvim",
		config = function()
			require("onedarkpro").setup({
				options = {
					transparency = true,
				},
			})
			vim.cmd("colorscheme onedark")
		end,
	},
}
