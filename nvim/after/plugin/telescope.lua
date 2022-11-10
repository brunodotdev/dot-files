if not pcall(require, "telescope") then return end

local telescope = require("telescope")
local actions = require("telescope.actions")
local builtin = require("telescope.builtin")
local fb_actions = require("telescope").extensions.file_browser.actions

local telescope_buffer_dir = function()
    return vim.fn.expand("%:p:h")
end

telescope.setup {
    defaults = {
        mappings = {
            n = {
                ["q"] = actions.close
            },
        },
    },

    extensions = {
        file_browser = {
            theme = "dropdown",
            hijack_netrw = false,
            mappings = {
                ["i"] = {
                    ["<C-w>"] = function() vim.cmd("normal vbd") end,
                },
                ["n"] = {
                    ["N"] = fb_actions.create,
                    ["D"] = fb_actions.remove,
                    ["R"] = fb_actions.rename,
                    ["h"] = fb_actions.goto_parent_dir,
                },
            },
        },
    },
}

telescope.load_extension("file_browser")

local map = vim.keymap.set
map("n", ";f",
    function()
        builtin.find_files({
            no_ignore = false,
            hidden = true,
        })
    end
)

map("n", ";g", function() builtin.live_grep() end)
map("n", ";b", function() builtin.buffers() end)
map("n", ";t", function() builtin.help_tags() end)
map("n", ";;", function() builtin.resume() end)
map("n", ";d", function() builtin.diagnostics() end)

-- TODO: Gotta think how to deal with this one
-- map("n", "<leader>;",
--     function()
--         telescope.extensions.file_browser.file_browser({
--             path = "%:p:h",
--             cwd = telescope_buffer_dir(),
--             respect_gitignore = false,
--             hidden = true,
--             grouped = true,
--             previewer = false,
--             initial_mode = "normal",
--             layout_config = { height = 40 }
--         })
--     end
-- )
