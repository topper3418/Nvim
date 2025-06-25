-- In ~/.config/nvim/init.lua

-- Create an autocommand group for indentation settings
vim.api.nvim_create_augroup("IndentSettings", { clear = true })

-- lua settings
vim.api.nvim_create_autocmd("FileType", {
	group = "IndentSettings",
	pattern = "lua",
	callback = function()
		vim.bo.tabstop = 2
		vim.bo.shiftwidth = 2
		vim.bo.expandtab = true
		vim.bo.softtabstop = 2
	end,
})
-- python settings
vim.api.nvim_create_autocmd("FileType", {
	group = "IndentSettings",
	pattern = "python",
	callback = function()
		vim.bo.tabstop = 4
		vim.bo.shiftwidth = 4
		vim.bo.expandtab = true
		vim.bo.softtabstop = 4
	end,
})

-- javascript settings
vim.api.nvim_create_autocmd("FileType", {
	group = "IndentSettings",
	pattern = "javascript",
	callback = function()
		vim.bo.tabstop = 2
		vim.bo.shiftwidth = 2
		vim.bo.expandtab = true
		vim.bo.softtabstop = 2
	end,
})

-- jsx settings
vim.api.nvim_create_autocmd("FileType", {
	group = "IndentSettings",
	pattern = "javascriptreact",
	callback = function()
		vim.bo.tabstop = 2
		vim.bo.shiftwidth = 2
		vim.bo.expandtab = true
		vim.bo.softtabstop = 2
	end,
})

-- typescript settings
vim.api.nvim_create_autocmd("FileType", {
	group = "IndentSettings",
	pattern = "typescript",
	callback = function()
		vim.bo.tabstop = 2
		vim.bo.shiftwidth = 2
		vim.bo.expandtab = true
		vim.bo.softtabstop = 2
	end,
})

-- tsx settings
vim.api.nvim_create_autocmd("FileType", {
	group = "IndentSettings",
	pattern = "typescriptreact",
	callback = function()
		vim.bo.tabstop = 2
		vim.bo.shiftwidth = 2
		vim.bo.expandtab = true
		vim.bo.softtabstop = 2
	end,
})

-- markdown settings
vim.api.nvim_create_autocmd("FileType", {
	group = "IndentSettings",
	pattern = "markdown",
	callback = function()
		vim.bo.tabstop = 2
		vim.bo.shiftwidth = 2
		vim.bo.expandtab = true
		vim.bo.softtabstop = 2
	end,
})

-- html settings
vim.api.nvim_create_autocmd("FileType", {
	group = "IndentSettings",
	pattern = "html",
	callback = function()
		vim.bo.tabstop = 2
		vim.bo.shiftwidth = 2
		vim.bo.expandtab = true
		vim.bo.softtabstop = 2
	end,
})

-- go settings
vim.api.nvim_create_autocmd("FileType", {
	group = "IndentSettings",
	pattern = "go",
	callback = function()
		vim.bo.tabstop = 4
		vim.bo.shiftwidth = 4
		vim.bo.expandtab = true
		vim.bo.softtabstop = 4
	end,
})

-- bash settings
vim.api.nvim_create_autocmd("FileType", {
	group = "IndentSettings",
	pattern = "sh",
	callback = function()
		vim.bo.tabstop = 6
		vim.bo.shiftwidth = 6
		vim.bo.expandtab = true
		vim.bo.softtabstop = 6
	end,
})
