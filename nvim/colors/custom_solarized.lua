function ConstructColor(colour)
  return { gui = colour }
end

local transparent = ConstructColor("None")
local base00      = ConstructColor("#657b83")
local base01      = ConstructColor("#93a1a1")
local base02      = ConstructColor("#eee8d5")
local base03      = ConstructColor("#fdf6e3")
local base0       = ConstructColor("#839496")
local base1       = ConstructColor("#586e75")
local base2       = ConstructColor("#073642")
local base3       = ConstructColor("#002b36")
local yellow      = ConstructColor("#b58900")
local orange      = ConstructColor("#cb4b16")
local red         = ConstructColor("#dc322f")
local magenta     = ConstructColor("#d33682")
local violet      = ConstructColor("#6c71c4")
local blue        = ConstructColor("#268bd2")
local cyan        = ConstructColor("#2aa198")
local green       = ConstructColor("#719e07")

local floatbackground = ConstructColor("#132434")

local colorscheme = require("mrwynaut.highlights")

-- For reference elsewhere
colorscheme.loadHighlights({
  Normal = { base01 },
  NormalFloat = { base0 },
  Border = { base2 },
  FloatBorder = { base2 },
  Decoration = { orange },
  Hidden = { base3 },
  Path = { blue },
  BuiltIn = { red },
  VarName = { base00, "bold" },
  FuncName = { cyan },
  typeName = { violet },
  Key = { cyan },
  Val = { violet },
  String = { base03 },
  Operator = { base03 },
  Success = { green },
  Warning = { yellow },
  Info = { cyan },
  Error = { red },

  -- Vim
  Cursor = { transparent, base0 },
  CursorColumn = { transparent, base1 },
  ColorColumn = { transparent, base02 },
  LineNr = { transparent },
  CursorLine = { transparent, transparent, transparent, base1 },
  CursorLineNr = { transparent },
  VertSplit = { base00 },
  matchparen = { red, base01, "bold" },
  statusline = { base1 },
  statuslinenc = { base00 },
  winbar = { base01 },
  winbarsep = { base00, base03 },
  winbarpath = { base03, base01 },
  incsearch = { orange, "bold,underline" },
  search = { yellow, "bold,underline" },
  directory = { blue },
  folded = { base0, base2 },
  wildmenu = { base2 },
  visualnos = { base3, yellow },
  modemsg = { blue },
  foldcolumn = { base0, base2 },
  moremsg = { blue },
  cursorim = { violet },
  pmenu = { base2 },
  pmenusel = { base01, base2 },
  pmenusbar = { base02 },
  pmenuthumb = { base0, transparent },
  visual = { base01, base03, "bold,underline" },
  endofbuffer = { base01 },
  underlined = { transparent, "underline" },
  spellbad = { transparent, "undercurl" },
  spellcap = { transparent, "undercurl" },
  spelllocal = { transparent, "undercurl" },
  signcolumn = { base0 },
  question = { cyan, "bold" },
  tabline = { base0 },
  tablinefill = { base0, base02 },
  tablinesel = { yellow, transparent },
  notificationinfo = { base00, floatbackground },
  notificationerror = { red, floatbackground },
  notificationwarning = { yellow, floatbackground },
  winseparator = { base03 },

  -- General
  Boolean = { violet },
  Character = { violet },
  Comment = { base0, "italic" },
  Conditional = { red },
  Constant = { cyan },
  Define = { red },
  DiffAdd = { green, base2 },
  DiffChange = { yellow, base2, "bold" },
  DiffDelete = { red, base2 },
  DiffText = { blue, base2, "bold" },
  ErrorMsg = { red },
  WarningMsg = { red },
  Float = { violet },
  Function = { cyan },
  Identifier = { blue },
  Keyword = { red },
  Label = { cyan },
  NonText = { base00 },
  Number = { cyan },
  PreProc = { orange },
  Parameter = { green },
  Special = { red },
  SpecialKey = { base00 },
  Statement = { green },
  Tag = { cyan },
  Todo = { magenta, "bold" },
  Include = { red },
  Type = { yellow },
  SpecialComment = { cyan, "bold" },
  Title = { orange, "bold" },
  Typedef = { violet },
  PreCondit = { red },
  Ignore = { transparent },
  Delimiter = { transparent },
  Conceal = { blue },

  -- CMP
  CmpItemAbbrMatch = { cyan },
  CmpItemKindFunction = { red },
  CmpItemKindSnippet = { yellow },
  CmpItemKindText = { base0 },
  CmpItemKindKeyword = { violet },

})
