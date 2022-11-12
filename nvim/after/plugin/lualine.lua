if not pcall(require, "lualine") then return end

local filetype = {
    "filetype",
    colored = true,
    icon_only = true,
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

require("lualine").setup {
    options = {
        icons_enabled = true,
        theme = "catppuccin",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        padding = 2,
    },

    sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = { filetype, "filename" },
        lualine_x = { diff, "encoding" },
        lualine_y = { diagnostics },
        lualine_z = { "fileformat" },
    },

    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { filetype, "filename" },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
    },
}
