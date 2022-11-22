if not pcall(require, "lualine") then return end

local mode = function()
    return vim.api.nvim_get_mode().mode
end

local lsp = function()
    if vim.lsp.buf.server_ready() then
        return "LSP: ON"
    end
    return "LSP: OFF"
end

local filetype = {
    "filetype",
    colored = true,
    icon_only = false,
}

local filename = {
    "filename",
    file_status = true,
    path = 1,
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
    },

    sections = {
        lualine_a = { mode },
        lualine_b = { "branch" },
        lualine_c = { filename, diff },
        lualine_x = { lsp, diagnostics },
        lualine_y = { filetype },
        lualine_z = {},
    },

    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { filetype },
        lualine_y = {},
        lualine_z = {},
    },
}
