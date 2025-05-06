---------------------------------------------------------------------------
--                             CONFIGURATION                             --
---------------------------------------------------------------------------
-- map the leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


---------------------------------------------------------------------------
--                               OVERRIDES                               --
---------------------------------------------------------------------------
-- clear highlighting on pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')


---------------------------------------------------------------------------
--                               NAVIGATION                              --
---------------------------------------------------------------------------
-- Multi window:
vim.keymap.set('n', ':vs<CR>', ':vsplit<CR><C-w>w', { desc = 'Vertical split and switch to new window' })
vim.keymap.set('n', ':sp<CR>', ':split<CR><C-w>w', { desc = 'Split and switch to new window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'moves to the window to the right' })
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'moves to the window to the left' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'moves to the window above' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'moves to the window below' })


---------------------------------------------------------------------------
--                              DIAGNOSTICS                              --
---------------------------------------------------------------------------
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })


---------------------------------------------------------------------------
--                               SHORTCUTS                               --
---------------------------------------------------------------------------
vim.keymap.set('n', '<leader>rr', ':source $MYVIMRC<CR>', { desc = 'Reload init.lua' })
-- double tap escape to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
