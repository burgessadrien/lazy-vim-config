return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
		config = function()
			local function map(mode, lhs, rhs)
				vim.keymap.set(mode, lhs, rhs, { silent = true })
			end
			map("n", "<leader>`", "<CMD>Neotree toggle<CR>")
			map("n", "<leader>~", "<CMD>Neotree focus<CR>")
		end,
	},
}
