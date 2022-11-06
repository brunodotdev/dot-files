local file_type_icon = function(filetype)
    return require("nvim-web-devicons").get_icon_by_filetype(filetype)
end

local filename = {
    "filename",
    file_status = true,
    path = 0,
    symbols = {
        modified = "",
        readonly = "",
        unnamed = "",
        newfile = "",
    }
}

local filetype = {
    "filetype",
    colored = true,
    icon_only = true,
    icon = {
        file_type_icon { "filename", align = "left" }
    }
}

local mode = {
    "mode",
    icons_enabled = true,
}

local diagnostics = {
    "diagnostics",
    sources = { "nvim_diagnostic" },
    sections = { "error", "warn", "info", "hint" },
    diagnostics_colors = {
        error = "DiagnosticError",
        warn = "DiagnosticWarn",
        info = "DiagnosticInfo",
        hint = "DiagnosticHint",
    },
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
        disabled_filetypes = { "text" },
        always_divide_middle = true,
        globalstatus = false,
    },

    sections = {
        lualine_a = { filetype, filename },
        lualine_b = { mode },
        lualine_c = { branch, diff },
        lualine_x = { "encoding" },
        lualine_y = { diagnostics },
        lualine_z = { "fileformat" },
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
        lualine_a = { tabs, filetype, filename },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
    }
}
