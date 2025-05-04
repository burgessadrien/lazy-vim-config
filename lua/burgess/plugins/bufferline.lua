return { -- Bufferline
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		diagnostics_indicator = function(count)
			local s = " "
			for e, n in pairs(diagnostics_dict) do
				local sym = e == "error" and " " or (e == "warning" and " " or " ")
				s = s .. n .. sym
			end
			return s
		end,
		padded_slant = 50,
		config = function()
			vim.opt.termguicolors = true
			require("bufferline").setup({})
		end,
	},
}
