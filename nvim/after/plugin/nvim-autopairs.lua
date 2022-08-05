local npairs = require("nvim-autopairs")

npairs.setup({
    enable_check_bracket_line = true,
    check_ts = true
})

local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({map_char = {tex = ''}}))
