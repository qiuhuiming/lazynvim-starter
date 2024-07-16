return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    servers = {
      clangd = {
        capabilities = {
          offsetEncoding = "utf-8",
        },
      },
    },
  },
}
