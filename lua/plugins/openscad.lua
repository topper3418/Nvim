-- Autocommand to set filetype and syntax for OpenSCAD files
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = "*.scad",
	callback = function()
		-- Set filetype and syntax for OpenSCAD files
		vim.bo.filetype = "openscad"
		vim.bo.syntax = "openscad" -- ensures syntax is set
		-- Set tabstop and shiftwidth for OpenSCAD files
		vim.bo.tabstop = 4
		vim.bo.shiftwidth = 4
	end,
})

-- pdf command setting
vim.g.openscad_pdf_cmd = "zathura"

return {
	"salkin-mada/openscad.nvim",
	config = function()
		vim.g.openscad_load_snippets = true
		require("openscad")
	end,
	dependencies = { "L3MON4D3/LuaSnip", "junegunn/fzf.vim" },
}
