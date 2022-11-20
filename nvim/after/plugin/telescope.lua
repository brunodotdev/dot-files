if not pcall(require, "telescope") then return end

local remap = require("B.remap")
local nnoremap = remap.bind("n")

local telescope = require("telescope")
telescope.setup {}

local builtin = require("telescope.builtin")
nnoremap(";f", function() builtin.find_files() end)
nnoremap(";b", function() builtin.buffers() end)
nnoremap(";t", function() builtin.help_tags() end)
nnoremap(";d", function() builtin.diagnostics() end)
