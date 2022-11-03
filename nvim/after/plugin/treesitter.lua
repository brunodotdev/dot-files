require("nvim-treesitter.configs").setup {
    ensure_installed = {
        "c",
        "cpp",
        "css",
        "html",
        "javascript",
        "lua",
        "python",
    },
    sync_install = false,

    highlight = {
        enable = true,
        disable = {},
        additional_vim_regex_highlighting = false,
    },

    indent = {
        enable = false,
        disable = {},
    },

    autotag = {
        enable = true,
    },
}

require("treesitter-context").setup {
    enable = true,
    max_lines = 0,
    trim_scope = "outer",
    min_window_height = 0,
    patterns = {
        default = {
            "class",
            "function",
            "method",
            "for",
            "while",
            "if",
            "switch",
            "case",
        },

        markdown = {
            "section",
        },

        json = {
            "pair",
        },
    },
    mode = "topline",
}
