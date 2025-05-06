-- Line number settings
vim.opt.number = true
vim.opt.relativenumber = true

-- I think ghostty uses nerd fonts
vim.g.have_nerd_font = true

-- Set highlight groups for line numbers, to help show cursor location
vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#98E2C6", bold = false }) -- Pastel green
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#FF9999", bold = false }) -- Pastel red
vim.api.nvim_set_hl(0, "LineNr", { fg = "#FFFFFF", bold = true }) -- Bold white for current line

-- Enable gentle crosshair effect
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.api.nvim_set_hl(0, "CursorColumn", { bg = "#333333" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#333333" })

-- Customize cursor appearance
vim.opt.guicursor =
	"n-v-c:block-Cursor,i-ci-ve:ver25-Cursor-blinkwait700-blinkon400-blinkoff400,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkon150-blinkoff125"
