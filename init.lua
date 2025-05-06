-- First attempt by Travis Opperud to do his own neovim config from scratch


-- in order of "least likely to break, ascending:"
-- 1) my custom settings (keymaps, colors, etc)
require('settings')
-- 2) my custom utils and functions and such, along with their individual settings
require('utils')
-- 3) my 3rd party plugins I've installed
require('plugins')

