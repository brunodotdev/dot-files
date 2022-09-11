
local function setHighlight(group, args)
  local fg = args[1]
  local bg = { gui = "None" }
  local attrs
  if type(args[2]) == "table" then
    bg = args[2]
    if type(args[3]) == "string" then
      attrs = args[3]
    end
  elseif type(args[2]) == "string" then
    attrs = args[2]
  end
  local args = { fg = fg.gui, bg = bg.gui }
  if attrs then
    for val in vim.gsplit(attrs, ",") do
      args[val] = true
    end
  end
  vim.api.nvim_set_hl(0, group, args)
end

local M = {}

M.Highlights = function(highlights)
    for group, groupArgs in pairs(highlights) do
    setHighlight(group, groupArgs)
    end
end

return M
