vim.g.dashboard_default_executive = "telescope"

require('dashboard').setup {
  -- config
  -- theme = 'doom',
  -- config = {
  --   header = {
  --     "                                      ",
  --     "             ▄████▄ ▄████▄            ",
  --     "             ██  ██ ██▀               ",
  --     "             █████▀ ▀████▄            ",
  --     "             ██        ▄██            ",
  --     "             ▀█     ▀████▀            ",
  --     " ",
  --     "▄████▄ ▄██████▄ ▄█████▄  ▄████▄ ▄████▄",
  --     "██▀    ██▀  ▀██ ██   ▀██ ██▀    ██  ██",
  --     "██     ██    ██ ██    ██ ████   ██▄██▀",
  --     "██▄    ██▄  ▄██ ██   ▄██ ██▄    ████▄ ",
  --     "▀████▀ ▀██████▀ ▀█████▀  ▀████▀ ▀█ ▀██",
  --     "                                      ",
  --   },
  --   center = {
  --     {
  --       icon = ' ',
  --       icon_hl = 'Title',
  --       desc = 'Find File           ',
  --       desc_hl = 'String',
  --       key = 'b',
  --       keymap = 'SPC f f',
  --       key_hl = 'Number',
  --       action = 'lua print(2)'
  --     },
  --     {
  --       icon = ' ',
  --       desc = 'Find Dotfiles',
  --       key = 'f',
  --       keymap = 'SPC f d',
  --       action = 'lua print(3)'
  --     },
  --   },
  --   footer = {}  --your footer
  -- }
  theme = 'hyper',
  config = {
    week_header = {
      enable = true,
      color = '#ffffff'
    },
    shortcut = {
      { desc = ' Update', group = '@property', action = 'Lazy update', key = 'u' },
      {
        icon = ' ',
        icon_hl = '@variable',
        desc = 'Files',
        group = 'Label',
        action = 'Telescope find_files',
        key = 'f',
      },
      {
        desc = ' Apps',
        group = 'DiagnosticHint',
        action = 'Telescope app',
        key = 'a',
      },
      {
        desc = ' dotfiles',
        group = 'Number',
        action = 'Telescope dotfiles',
        key = 'd',
      },
    },
  },
}

vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#eb6f92" })
vim.api.nvim_set_hl(0, "DashboardCenter", { fg = "#f6c177" })
