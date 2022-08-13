local installed, ts = pcall(require, 'nvim-treesitter.configs')
if not installed then return end

ts.setup {
    highlight = {
        enable = true,
        disable = {},
    },
    indent = {
        enable = true,
        disable = {},
    },
    ensure_installed = {
        'python',
        'lua'
    },
    autotag = {
        enable = true,
    },
}