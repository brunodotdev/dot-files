if not pcall(require, "telescope") then return end

local remap = require("B.remap")
local nnoremap = remap.bind("n")
local builtin = require("telescope.builtin")

local telescope = require("telescope")
telescope.setup {
    extensions = {
        file_browser = {
            initial_mode = "normal",
            path = "%:p:h",
            theme = "dropdown",
            hijack_netrw = true,
            grouped = true,
        },
    },
}

require("telescope").load_extension "file_browser"

nnoremap(";f", function() builtin.find_files() end)
nnoremap(";b", function() builtin.buffers() end)
nnoremap(";t", function() builtin.help_tags() end)
nnoremap(";d", function() builtin.diagnostics() end)

local telescope_buffer_dir = function()
    return vim.fn.expand("%:p:h")
end

nnoremap("<leader>e", function()
    telescope.extensions.file_browser.file_browser({
        path = "%:p:h",
        cwd = telescope_buffer_dir(),
        respect_gitignore = false,
        hidden = true,
        grouped = true,
        initial_mode = "normal",
    })
end)
