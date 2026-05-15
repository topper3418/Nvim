return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master", -- required now that the repo is archived
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			-- parsers you definitely want
			ensure_installed = { "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
			auto_install = true,

			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
