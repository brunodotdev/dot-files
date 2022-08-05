local nvim_tree = require("nvim-tree")
local lib = require("nvim-tree.lib")
local view = require("nvim-tree.view")

local function edit_or_open()
    local action = "edit"
    local node = lib.get_node_at_cursor()
    if node.link_to and not node.nodes then
        require("nvim-tree.actions.open-file").fn(action, node.link_to)
        view.close()
    elseif node.nodes ~= nil then
        lib.expand_or_collapse(node)
    else
        require("nvim-tree.actions.open-file").fn(action, node.absolute_path)
        view.close()
    end
end

local config = {
    hijack_unnamed_buffer_when_opening = true,
    view = {
        adaptive_size = true,
        mappings = {
            custom_only = false,
            list = {
                {key = "l", action = "edit", action_cb = edit_or_open},
                {key = "h", action = "close_node"},
            },
        },
    },
    actions = {
        open_file = {
            quit_on_open = true,
        }
    }
}
vim.api.nvim_set_keymap('n', 'T', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
nvim_tree.setup(config)
