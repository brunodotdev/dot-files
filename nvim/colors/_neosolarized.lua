local constructColor = function(color)
    return { gui = color }
end

local transparent = constructColor("None")
local base00      = constructColor("#657b83")
local base01      = constructColor("#93a1a1")
local base02      = constructColor("#eee8d5")
local base03      = constructColor("#fdf6e3")
local base0       = constructColor("#839496")
local base1       = constructColor("#586e75")
local base2       = constructColor("#073642")
local base3       = constructColor("#002b36")
local yellow      = constructColor("#b58900")
local orange      = constructColor("#cb4b16")
local red         = constructColor("#dc322f")
local magenta     = constructColor("#d33682")
local violet      = constructColor("#6c71c4")
local blue        = constructColor("#268bd2")
local cyan        = constructColor("#2aa198")
local green       = constructColor("#719e07")
local black       = constructColor("#000000")

local hl = require("B.colors")
hl.loadHighlights({

    Error = { red },
    Warning = { yellow },
    Information = { blue },
    Hint = { cyan },

    Normal = { transparent },
    NormalNC = { transparent },

    Comment = { base01, "italic" },
    Constant = { cyan },
    Identifier = { blue },

    Statement = { green },
    PreProc = { orange },
    Type = { yellow },
    Special = { red },
    Underlined = { violet },
    Ignore = { transparent },
    TODO = { magenta, "bold" },

    SpecialKey = { base00, base02 },
    NonText = { base00, "bold" },
    StatusLine = { base01, base02, "reverse" },
    StatusLineNC = { base00, base02, "reverse" },
    Visual = { transparent, base03, "reverse" },
    Directory = { blue },
    ErrorMsg = { red, "reverse" },

    IncSearch = { orange, "standout" },
    Search = { yellow, "reverse" },

    MoreMsg = { blue },
    ModeMsg = { blue },
    Question = { cyan, "bold" },
    VerSplit = { base00 },
    Title = { orange, "bold" },
    VisualNOS = { transparent, base02, "reverse" },
    WarningMsg = { red },
    WildMenu = { base2, base02, "bold", base03 },
    Folded = { base0, base02, "bold", base03 },
    FoldColumn = { base0, base02 },

    DiffAdd = { green, "bold", green },
    DiffChange = { yellow, "bold", yellow },
    DiffDelete = { red, "bold" },
    DiffText = { blue, "bold", blue },

    SignColumn = { transparent },
    Conceal = { blue },

    SpellBad = { transparent, "undercurl", red },
    SpellCap = { transparent, "undercurl", violet },
    SpellRare = { transparent, "undercurl", cyan },
    SpellLocal = { transparent, "undercurl", yellow },

    Pmenu = { base02 },
    PmenuSel = { base01, base2, "reverse" },
    PmenuSbar = { base02, transparent, "reverse" },
    PmenuThumb = { base0, transparent, "reverse" },

    Border = { base02 },
    FloatBorder = { base02 },

    TabLine = { base0, base02, base0 },
    TabLineFill = { base0, base02 },
    TabLineSel = { yellow, transparent },

    LineNr = { base01 },
    CursorLine = { transparent },
    CursorLineNr = { yellow, black, base1 },
    ColorColumn = { transparent, base02 },
    Cursor = { base03, base0 },
    lCursor = { base03, base0 },
    TermCursor = { base03, base0 },
    TermCursorNC = { base03, base01 },

    MatchParen = { red, base01, "bold" },

    -- Vim section
    VimVar = { blue },
    VimFunc = { blue },
    VimUserFunc = { blue },
    helpSpecial = { red },
    vimSet = { transparent },
    vimSetEqual = { transparent },
    vimCommentString = { violet },
    vimCommand = { yellow },
    vimCmdSep = { blue, "bold" },
    helpExample = { base1 },
    helpOption = { cyan },
    helpNote = { magenta },
    helpVim = { magenta },
    helpHyperTextJump = { blue, "underline" },
    helpHyperTextEntry = { green },
    vimIsCommand = { base00 },
    vimSynMtchOpt = { yellow },
    vimSynType = { cyan },
    vimHiLink = { blue },
    vimGroup = { blue, "underline,bold" },

    -- Cmp section
    CmpItemKind = { green },
    CmpItemMenu = { base0 },
    CmpItemAbbr = { base0 },
    CmpItemAbbrMatch = { cyan },
    CmpItemKindText = { base3 },
    CmpItemMethod = { green },
    CmpItemKindFunction = { blue },
    CmpItemKindConstructor = { orange },
    CmpItemKindField = { yellow },
    CmpItemKindVariable = { orange },
    CmpItemKindClass = { yellow },
    CmpItemKindInterface = { yellow },
    CmpItemKindModule = { green },
    CmpItemKindProperty = { green },
    CmpItemKindUnit = { orange },
    CmpItemKindValue = { cyan },
    CmpItemKindEnum = { yellow },
    CmpItemKindKeyword = { green },
    CmpItemKindSnippet = { magenta },
    CmpItemKindColor = { magenta },
    CmpItemKindFile = { violet },
    CmpItemKindReference = { violet },
    CmpItemKindFolder = { violet },
    CmpItemKindEnumMember = { cyan },
    CmpItemKindConstant = { cyan },
    CmpItemKindStruct = { yellow },
    CmpItemKindEvent = { orange },
    CmpItemKindOperator = { cyan },
    CmpItemKindTypeParameter = { orange },

    -- Git Signs
    GitSignsAddLn = { green },
    GitSignsAddNr = { green },
    GitSignsChangeLn = { yellow },
    GitSignsChangeNr = { yellow },
    GitSignsDeleteLn = { red },
    GitSignsDeleteNr = { red },
    GitSignsCurrentLineBlame = { base01 },

    -- Telescope
    TelescopeMatching = { orange },
    TelescopeBorder = { base01 },
    TelescopePromptBorder = { cyan },
    TelescopeTitle = { transparent },
    TelescopePromptPrefix = { transparent },
    TelescopeSelection = { cyan },
    TelescopeSelectionCaret = { cyan },
})
