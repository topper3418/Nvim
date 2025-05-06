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
vim.opt.guicursor = {
  'n-v-c:block-Cursor', -- Normal, Visual, Command: block cursor with white box
  'i-ci-ve:ver25-Cursor-blinkwait700-blinkon400-blinkoff400', -- Insert, Command-line insert, Visual-exclude: 25% vertical bar, blinking to white box
  'r-cr:hor20-Cursor', -- Replace, Command-line replace: horizontal bar
  'sm:block-Cursor-blinkwait175-blinkon150-blinkoff125' -- Showmatch: blinking block
}


---------------------------------------------------------------------------
--                                KEYMAPS                                --
---------------------------------------------------------------------------
---
---
vim.keymap.set('n', ':vs<CR>', ':vsplit<CR><C-w>w', { desc = 'Vertical split and switch to new window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'moves to the window to the right' })
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'moves to the window to the left' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'moves to the window above' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'moves to the window below' })




---------------------------------------------------------------------------
--                             CUSTOM PLUGINS                            --
---------------------------------------------------------------------------
---
---
---




---------------------------------------------------------------------------
--                           3RD PARTY PLUGINS                           --
---------------------------------------------------------------------------
