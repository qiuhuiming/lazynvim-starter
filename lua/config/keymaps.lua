local fzf_lua = require("fzf-lua")

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map({ "i" }, "jj", "<esc>", { desc = "Go to normal mode", remap = false })
map({ "n" }, "W", "<cmd>w<CR>", { desc = "Save", remap = false })
map({ "n" }, "Q", "<cmd>q<CR>", { desc = "Quit", remap = false })
map({ "i" }, "<C-o>", "<esc>o", { desc = "Next Line", remap = false })
map({ "i" }, "<C-S-o>", "<esc>O", { desc = "Last Line", remap = false })

map({ "n", "v" }, "<leader>r", function()
  fzf_lua.resume()
end, { desc = "fzf_lua Resume", remap = false })

function DisableLsp()
  vim.lsp.stop_client(vim.lsp.get_active_clients())
end

function DeleteLspLog()
  vim.cmd("!rm -f ~/.local/state/nvim/lsp.log")
end
