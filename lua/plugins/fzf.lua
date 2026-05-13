-- In your plugins file (e.g. lua/plugins/telescope.lua or wherever you load telescope)
return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("fzf-lua").setup({})
  end,
}
