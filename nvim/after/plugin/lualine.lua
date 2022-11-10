if not pcall(require, "lualine") then return end

local filename = {
    "filename",
    file_status = true,
    path = 0,
}

local filetype = {
    "filetype",
    colored = true,
    icon_only = true,
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
        lualine_a = { mode },
        lualine_b = { branch },
        lualine_c = { filetype, filename },
        lualine_x = { diff, "encoding" },
        lualine_y = { diagnostics },
        lualine_z = { "fileformat" },
    },

    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { filetype, filename },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
    },

}
