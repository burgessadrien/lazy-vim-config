return {
	{
		-- If you want neo-tree's file operations to work with LSP (updating imports, etc.), you can use a plugin like
		-- https://github.com/antosha417/nvim-lsp-file-operations:
		"antosha417/nvim-lsp-file-operations",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-neo-tree/neo-tree.nvim",
		},
		opertaions = {
			willRenameFiles = true,
			didRenameFiles = true,
			willCreateFiles = true,
			didCreateFiles = true,
			willDeleteFiles = true,
			didDeleteFiles = true,
		},
		config = function()
			require("lsp-file-operations").setup()
		end,
	},
}
