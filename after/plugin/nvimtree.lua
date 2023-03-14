-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=NONE]])
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- empty setup using defaults
-- require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        width = 30,
        cursorline = false,
        mappings = {
            list = {
                { key = "u", action = "dir_up" },
            },
        },
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
    git = {
        enable = true,
        ignore = false
    }
})

vim.keymap.set("n", "<leader>e", function()
    vim.cmd.NvimTreeToggle()
end)

vim.keymap.set("n", "<leader>o", function()
    vim.cmd.NvimTreeFocus()
end)

local open_nvim_tree = function(data)
    local directory = vim.fn.isdirectory(data.file) == 1
    if not directory then
        return
    end
    vim.cmd.cd(data.file)
    require('nvim-tree.api').tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
