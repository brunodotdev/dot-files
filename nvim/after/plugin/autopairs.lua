local has_npairs, npairs = pcall(require, 'nvim-autopairs')
if not has_npairs then return end

npairs.setup({
  enable_check_bracket_line = true,
  check_ts = true
})
