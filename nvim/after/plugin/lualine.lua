local has_lualine, lualine = pcall(require, 'lualine')
if not has_lualine then return end

local hide_in_width = function()
  return vim.fn.winwidth(0) > 80
end

-- local function window()
--   return vim.api.nvim_win_get_tabpage(0)
-- end
--
-- local tabname = {
--   'filename',
--   filename_status = true, -- displays file status (readonly status, modified status)
--   path = 3, -- 0: file name only, 1: relative path, 2: absolute path, 3: absolute path wiht tilde
--   symbols = {
--     modified = ' ✓',
--     readonly = ' ✗',
--     unnamed = 'New file ➜',
--   }
-- }

local diagnostics = {
  'diagnostics',
  sources = { 'nvim_diagnostic' },
  sections = { 'error', 'warn', 'info', 'hint' },
  symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
  colored = false,
  update_in_insert = true,
  always_visible = true,
}

local diff = {
  'diff',
  colored = false,
  symbols = { added = " ", modified = " ", removed = " " },
  cond = hide_in_width,
}

local branch = {
  'branch',
  icons_enabled = true,
  icon = "",
}

lualine.setup({
  options = {
    icons_enabled = true,
    theme = "auto",
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { branch, diff },
    lualine_c = {},
    lualine_x = { 'encoding' },
    lualine_y = { diagnostics },
    lualine_z = { 'progress' },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {},
  },
})
