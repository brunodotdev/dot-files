-- plugins
local installed, _ = pcall(require, 'packer')
if not installed then return end

require 'plugins'
require 'keymaps'
require 'options'
