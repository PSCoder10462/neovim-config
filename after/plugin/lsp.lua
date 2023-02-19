-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('recommended')

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.configure('clangd', {
  cmd = {
    "clangd",
    "--header-insertion=never"
  }
})

lsp.setup()

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<leader>lf", ":lua vim.lsp.buf.format({ async = true })<CR>", opts)
