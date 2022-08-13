-- plugins
local installed, _ = pcall(require, 'packer')
if not installed then return end

require 'plugins'
require 'keymaps'
require 'options'

local has = function(x)
    return vim.fn.has(x) == 1
end

local is_windows = has 'win32'
if is_windows then
    require 'windows'
end
