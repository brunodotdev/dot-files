local M = {}

local mode = function(op, outer_opts)
	outer_opts = outer_opts or { noremap = true }
	return function(lhs, rhs, opts)
		opts = vim.tbl_extend("force", outer_opts, opts or {})
		vim.keymap.set(op, lhs, rhs, opts)
	end
end

M.nnoremap = mode("n")
M.vnoremap = mode("v")
M.xnoremap = mode("x")
M.inoremap = mode("i")
M.bufremap = mode("n", { noremap = true, buffer = 0})

return M
