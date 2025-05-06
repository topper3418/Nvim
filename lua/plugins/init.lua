-- ensure lazy is downloaded
require("plugins.lazy")

-- install default programs
require("lazy").setup({
	-- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	require("plugins.gitsigns"), -- Adds git related signs to the gutter, as well as utilities for managing changes
	require("plugins.telescope"), -- Fuzzy Finder (files, lsp, etc)
	require("plugins.mason"), -- Language server
	require("plugins.treesitter"), -- navigation
	require("plugins.indent-line"), -- indent visual
	require("plugins.autopairs"), -- automatic closures
	require("plugins.todo-comments"), -- special comment highlighting
	require("plugins.neotree"), -- tree for browsing file tree
	require("plugins.oil"), -- quick vim-like way to navigate files
	require("plugins.conform"), -- auto formatting plugin
	require("plugins.cmp"), -- auto completion
	-- require("plugins.copilot"), -- AI assistant
})
