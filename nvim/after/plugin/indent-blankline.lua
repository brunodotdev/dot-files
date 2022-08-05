local indent_blankline = require("indent_blankline")
vim.opt.list = true

indent_blankline.setup {
    show_current_context = true,
    show_current_context_start = true,
}
