return {
	"ThePrimeagen/harpoon",
	branch = "master",
	event = "VeryLazy",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {
		menu = {
			width = 120,
		},
	},
	config = function()
		local keymap = vim.keymap

		keymap.set("n", "<leader>ha", require("harpoon.mark").add_file, { desc = "Add file to harpoon" })
		keymap.set("n", "<leader>hh", require("harpoon.ui").toggle_quick_menu, { desc = "Toggle harpoon menu" })
		keymap.set("n", "<leader>hq", function()
			require("harpoon.ui").nav_file(1)
		end, { desc = "Navigate to harpoon file1" })
		keymap.set("n", "<leader>hw", function()
			require("harpoon.ui").nav_file(2)
		end, { desc = "Navigate to harpoon file2" })
		keymap.set("n", "<leader>he", function()
			require("harpoon.ui").nav_file(3)
		end, { desc = "Navigate to harpoon file3" })
		keymap.set("n", "<leader>hr", function()
			require("harpoon.ui").nav_file(4)
		end, { desc = "Navigate to harpoon file4" })
		keymap.set("n", "<leader>ht", function()
			require("harpoon.ui").nav_file(5)
		end, { desc = "Navigate to harpoon file5" })
		keymap.set("n", "<leader>hy", function()
			require("harpoon.ui").nav_file(6)
		end, { desc = "Navigate to harpoon file6" })
		keymap.set("n", "<leader>hu", function()
			require("harpoon.ui").nav_file(7)
		end, { desc = "Navigate to harpoon file7" })
		keymap.set("n", "<leader>hi", function()
			require("harpoon.ui").nav_file(8)
		end, { desc = "Navigate to harpoon file8" })
		keymap.set("n", "<leader>ho", function()
			require("harpoon.ui").nav_file(9)
		end, { desc = "Navigate to harpoon file9" })
	end,
}
