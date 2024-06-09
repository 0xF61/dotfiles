--
-- Plugin File
return {
  -- add gruvbox
  { "yazeed1s/minimal.nvim" },

  { "tpope/vim-fugitive" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "minimal-base16",
    },
  },
}
