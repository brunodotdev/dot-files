if not pcall(require, "nvim-treesitter.configs") then return end

require("nvim-treesitter.configs").setup {
    ensure_installed = "all",
    sync_install = false,

    highlight = {
        enable = true,
        disable = {},
        additional_vim_regex_highlighting = false,
    },
}

if not pcall(require, "nvim-treesitter-context") then return end

require("nvim-treesitter-context").setup {
    enable = true,
    throttle = true, -- Throttles plugin updates (mauy improve performance)
    min_window_height = 0, -- How many lines the window should span. Values <= 0 means no limit.
    mode = "topline",
}

