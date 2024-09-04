return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  { "rebelot/kanagawa.nvim" },

  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night"
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
