local installed, npairs = pcall(require, 'nvim-autopairs')
if not installed then return end

npairs.setup({
  enable_check_bracket_line = true,
  check_ts = true
})
