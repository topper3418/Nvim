-- Enable true color for better color rendering
vim.opt.termguicolors = true

-- Define pastel color palette with blue focus
local colors = {
  pastel_blue = '#89B4FA',      -- Pastel blue for types, operators
  cerulean = '#007BA7',    -- Pastel purple for keywords
  forest_green = '#4A7043',     -- Forest green for strings
  medium_grey = '#7F8C8D',      -- Medium grey for comments
  white = '#F5F5F5',            -- White for identifiers
  light_blue = '#B1C9EF',       -- Light pastel blue for functions
  soft_blue = '#A5D6FF',        -- Soft blue for constants
  pastel_cyan = '#94E2D5',      -- Pastel cyan for special symbols
}

-- Set syntax highlighting
vim.api.nvim_set_hl(0, 'Keyword', { fg = colors.cerulean, bold = true })   -- cerulean, bold
vim.api.nvim_set_hl(0, 'String', { fg = colors.forest_green })                 -- Forest green
vim.api.nvim_set_hl(0, 'Function', { fg = colors.light_blue, italic = true })  -- Light pastel blue, italic
vim.api.nvim_set_hl(0, 'Comment', { fg = colors.medium_grey, italic = true })  -- Medium grey, italic
vim.api.nvim_set_hl(0, 'Type', { fg = colors.pastel_blue })                    -- Pastel blue
vim.api.nvim_set_hl(0, 'Constant', { fg = colors.soft_blue })                  -- Soft blue
vim.api.nvim_set_hl(0, 'Identifier', { fg = colors.white })                    -- White
vim.api.nvim_set_hl(0, 'Operator', { fg = colors.pastel_blue })                -- Pastel blue
vim.api.nvim_set_hl(0, 'PreProc', { fg = colors.cerulean })               -- Pastel purple
vim.api.nvim_set_hl(0, 'Special', { fg = colors.pastel_cyan })                 -- Pastel cyan
