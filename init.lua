-- First attempt by Travis Opperud to do his own neovim config from scratch
--
--
-- 
-- map the leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- I think ghostty uses nerd fonts
vim.g.have_nerd_font = true

-- this is convenient, shared clipboard
vim.opt.clipboard = 'unnamedplus'

-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- banner comment util
-- call with :banner
-- then enter the banner comment
require('utils.bannerman')
-- it comes out like this: 
---------------------------------------------------------------------------
--                            A BANNER COMMENT                           --
---------------------------------------------------------------------------
-- I will use these to split up my config going forward



---------------------------------------------------------------------------
--                                SETTINGS                               --
---------------------------------------------------------------------------
-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- Line number settings
vim.opt.number = true
vim.opt.relativenumber = true
-- Set highlight groups for line numbers, to help show cursor location
vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#98E2C6', bold = false }) -- Pastel green
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#FF9999', bold = false }) -- Pastel red
vim.api.nvim_set_hl(0, 'LineNr', { fg = '#FFFFFF', bold = true }) -- Bold white for current line
-- Enable true color for better color rendering
vim.opt.termguicolors = true
-- Enable gentle crosshair effect
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.api.nvim_set_hl(0, 'CursorColumn', { bg = '#333333' })
vim.api.nvim_set_hl(0, 'CursorLine', { bg = '#333333' })
-- Customize cursor appearance
vim.opt.guicursor = 'n-v-c:block-Cursor,i-ci-ve:ver25-Cursor-blinkwait700-blinkon400-blinkoff400,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkon150-blinkoff125'
-- highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
-- Save undo history
vim.opt.undofile = true
-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true


---------------------------------------------------------------------------
--                                KEYMAPS                                --
---------------------------------------------------------------------------
---
---
-- navigation
vim.keymap.set('n', ':vs<CR>', ':vsplit<CR><C-w>w', { desc = 'Vertical split and switch to new window' })
vim.keymap.set('n', ':sp<CR>', ':split<CR><C-w>w', { desc = 'Split and switch to new window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'moves to the window to the right' })
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'moves to the window to the left' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'moves to the window above' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'moves to the window below' })
-- diagnostics
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
-- reload config
vim.keymap.set('n', '<leader>rr', ':source $MYVIMRC<CR>', { desc = 'Reload init.lua' })



---------------------------------------------------------------------------
--                             CUSTOM PLUGINS                            --
---------------------------------------------------------------------------
--- 
---
---




---------------------------------------------------------------------------
--                           3RD PARTY PLUGINS                           --
---------------------------------------------------------------------------
---First I need to set up lazy, then I can load my other plugins from the 
---/lua/plugins/ folder
require('plugins')



