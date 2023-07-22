return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  {
    "folke/tokyonight.nvim",
    opt = {
      style = "storm",
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
