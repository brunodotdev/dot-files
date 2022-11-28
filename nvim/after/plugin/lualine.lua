if not pcall(require, "lualine") then return end

local mode = function()
    return vim.api.nvim_get_mode().mode
end

local lsp_status = function()
    if vim.lsp.buf.server_ready() then
        local server_name = vim.lsp.get_active_clients()[1]["name"]
        local status = "LSP CLIENT: " .. server_name
        return status
    end
    return "LSP UNAVAILABLE"
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
        lualine_x = { diagnostics, filetype },
        lualine_y = { lsp_status },
        lualine_z = { "fileformat" },
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
