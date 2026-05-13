-- ensure lazy is downloaded
require("plugins.lazy")

-- install default programs
require("lazy").setup({
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	require("plugins.gitsigns"), -- Adds git related signs to the gutter, as well as utilities for managing changes
	require("plugins.telescope"), -- Fuzzy Finder (files, lsp, etc)
	require("plugins.mason"), -- Language server
	require("plugins.indent-line"), -- indent visual
	require("plugins.autopairs"), -- automatic closures
	require("plugins.todo-comments"), -- special comment highlighting
	require("plugins.neotree"), -- tree for browsing files
	require("plugins.oil"), -- quick vim-like way to navigate files
	require("plugins.conform"), -- auto formatting plugin
	require("plugins.cmp"), -- auto completion
	require("plugins.copilot"), -- AI assistant
	-- require("copilot-chat"), -- AI chat
	require("plugins.lazygit"), -- Git integration
	require("plugins.openscad"), -- OpenSCAD language support
	require("plugins.theme"), -- onedark theme
	require("plugins.fzf"), -- fuzzy finder
	require("plugins.nvim-web-devicons"), -- icons
	require("plugins.luasnip"), -- plugin dep
})
