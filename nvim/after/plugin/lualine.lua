local filename = {
    "filename",
    newfile_status = false,
    path = 0,
    symbols = {
        modified = "➜",
        readonly = "✗",
        unnamed = "",
        newfile = "new file",

    }
}

local diagnostics = {
    "diagnostics",
    sources = { "nvim_diagnostic" },
    sections = { "error", "warn", "info", "hint" },
    symbols = { error = " ", warn = " ", info = " ", hint = " " },
    colored = true,
    update_in_insert = false,
    always_visible = false,
}

local diff = {
    "diff",
    colored = true,
    symbols = { added = " ", modified = " ", removed = " " },
}

local branch = {
    "branch",
    icons_enabled = true,
    icon = "",
}

local tabs = {
    "tabs",
    mode = 0,
}

require("lualine").setup {
    options = {
        icons_enabled = true,
        theme = "solarized_dark",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {},
        always_divide_middle = true,
        globalstatus = false,
    },

    sections = {
        lualine_a = { filename },
        lualine_b = { "mode" },
        lualine_c = { branch, diff },
        lualine_x = { "encoding" },
        lualine_y = { diagnostics },
        lualine_z = {},
    },

    inactive_sections = {
        lualine_a = { "filename" },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
    },

    tabline = {
        lualine_a = { tabs, filename },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
    }
}
