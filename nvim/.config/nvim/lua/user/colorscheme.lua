local colorscheme = "darkplus"
--local colorscheme = "default"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

--vim.cmd [[highlight Comment ctermfg=green]]
