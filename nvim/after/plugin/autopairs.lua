-- I'm lazy
if not pcall(require, "nvim-autopairs") then return end

require("nvim-autopairs").setup({
    enable_check_bracket_line = true,
    check_ts = true,
})
