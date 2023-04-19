local opts = { noremap = true, silent = true }

-- ESC to kj
vim.api.nvim_set_keymap("i", "kj", "<Esc>", opts)

-- splits navigation
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", opts)
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", opts)
vim.api.nvim_set_keymap("n", "<C-u>", "<C-w>k", opts)
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", opts)

-- buffer navigation
vim.api.nvim_set_keymap("n", "L", ":bnext<CR>", opts)
vim.api.nvim_set_keymap("n", "H", ":bprev<CR>", opts)

-- resize window CTRL+arrows
vim.api.nvim_set_keymap("n", "<C-Up>", ":resize +1<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-Down>", ":resize -1<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-Left>", ":vertical resize -1<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-Right>", ":vertical resize +1<CR>", opts)

-- move selected lines
vim.api.nvim_set_keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.api.nvim_set_keymap("v", "K", ":m '<-2<CR>gv=gv", opts)

-- visual mode paste without losing current clipboard
vim.api.nvim_set_keymap("x", "<leader>p", '"_dP', opts)

-- change current word
vim.api.nvim_set_keymap("n", "<leader>wr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts)

-- run cp c++ code
vim.api.nvim_set_keymap("n", "<C-E>", "<CR>:!g++ % --std=c++1z -Wall -O2 -o %:r.out && %:r.out<CR>", opts)
