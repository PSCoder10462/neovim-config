local colorscheme = "rose-pine"

local status_ok, _ = pcall(function ()
  vim.cmd("colorscheme " .. colorscheme)
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end
)

if not status_ok then
  vim.notify("colorscheme " .. colorscheme " not found")
  return
end

