local M = {}
local function bind(op, outer_opts)
  outer_opts = outer_opts or { noremap = true }
  return function(lhs, rhs, opts)
    opts = vim.tbl_extend("force",
      outer_opts,
      opts or {}
    )
    vim.keymap.set(op, lhs, rhs, opts)
  end
end

M.nnoremap = bind("n")
M.inoremap = bind("n")
M.vnoremap = bind("n")
M.xnoremap = bind("n")

return M
