function ConstructColor(colour)
  return { gui = colour }
end

local Transparent = ConstructColor("NONE")
local Grey1 = ConstructColor("#262626")
local Grey2 = ConstructColor("#424242")
local Grey3 = ConstructColor("#8B8B8B")
local Grey4 = ConstructColor("#bdbdbd")
local Grey5 = ConstructColor("#F8F8F8")

local Violet = ConstructColor("#D484FF")
local Blue = ConstructColor("#2f628e")
local Cyan = ConstructColor("#00f1f5")
local Green = ConstructColor("#A9FF68")
local DarkGreen = ConstructColor("#142818")
local Yellow = ConstructColor("#FFF59D")
local Orange = ConstructColor("#F79000")
local Red = ConstructColor("#F70067")
local DarkRed = ConstructColor("#3F0001")
local FloatBackground = ConstructColor("#132434")
local Background = ConstructColor("NONE")

local function setHighlight(group, args)
  local fg = args[1]
  local bg = Background
  local attrs
  if type(args[2]) == "table" then
    bg = args[2]
    if type(args[3]) == "string" then
      attrs = args[3]
    end
  elseif type(args[2]) == "string" then
    attrs = args[2]
  end
  local args = { fg = fg.gui, bg = bg.gui }
  if attrs then
    for val in vim.gsplit(attrs, ",") do
      args[val] = true
    end
  end
  vim.api.nvim_set_hl(0, group, args)
end

local function loadHighlights(highlights)
  for group, groupArgs in pairs(highlights) do
    setHighlight(group, groupArgs)
  end
end

local Normal = Grey5
local Border = Grey3
local Decoration = Orange
local Hidden = Grey3
local BuiltIn = Red
local VarName = Grey5
local FuncName = Cyan
local TypeName = Violet
local Key = Cyan
local Val = Violet
local Parameter = Green
local String = Yellow
local Operator = Orange
local Success = Green
local Warning = Yellow
local Info = Cyan
local Error = Red

-- For reference elsewhere
loadHighlights({
  Normal = { Normal },
  NormalFloat = { Normal },
  Border = { Border },
  FloatBorder = { Border },
  Decoration = { Orange },
  Hidden = { Grey3 },
  Path = { Blue },
  BuiltIn = { Red },
  VarName = { Grey5, "bold" },
  FuncName = { Cyan },
  TypeName = { Violet },
  Key = { Cyan },
  Val = { Violet },
  String = { Yellow },
  Operator = { Orange },
  Success = { Green },
  Warning = { Yellow },
  Info = { Cyan },
  Error = { Red },
  User1 = { Success, FloatBackground },
  User2 = { Warning, FloatBackground },
  User3 = { Error, FloatBackground },
  User4 = { Grey1, Info },

  -- Vim
  Cursor = { Grey1, Red },
  CursorLine = { Transparent, Transparent },
  CursorColumn = { Transparent, Grey1 },
  ColorColumn = { Transparent, Grey1 },
  LineNr = { Hidden },
  CursorLineNr = { Success, "bold" },
  VertSplit = { Hidden },
  MatchParen = { Key, "underline" },
  StatusLine = { Normal },
  StatusLineNC = { Hidden },
  WinBar = { Normal },
  WinBarSep = { Decoration, Grey1 },
  WinBarPath = { Grey5, Grey1 },
  IncSearch = { Green, "bold,underline" },
  Search = { Green, "bold,underline" },
  Directory = { Cyan },
  Folded = { Grey3 },
  WildMenu = { Cyan },
  VisualNOS = { Grey3, Yellow },
  ModeMsg = { Yellow },
  FoldColumn = { Grey4 },
  MoreMsg = { Yellow },
  cursorim = { Violet },
  Pmenu = { Grey4 },
  PmenuSel = { Transparent, Grey3, "bold" },
  PMenuSbar = { Transparent },
  PMenuThumb = { Transparent, Grey4 },
  Visual = { Transparent, Grey1, "bold,underline" },
  EndOfBuffer = { Grey1 },
  Underlined = { Transparent, "underline" },
  SpellBad = { Transparent, "undercurl" },
  SpellCap = { Transparent, "undercurl" },
  SpellLocal = { Transparent, "undercurl" },
  SignColumn = { Key },
  Question = { Info },
  TabLineFill = { Grey3 },
  NotificationInfo = { Normal, FloatBackground },
  NotificationError = { Error, FloatBackground },
  NotificationWarning = { Warning, FloatBackground },
  WinSeparator = { Grey2 },

  -- General
  Boolean = { Val },
  Character = { Val },
  Comment = { Hidden, "italic" },
  Conditional = { BuiltIn },
  Constant = { VarName },
  Define = { BuiltIn },
  DiffAdd = { Background, DarkGreen },
  DiffChange = { Background, Grey1 },
  DiffDelete = { Background, DarkRed },
  DiffText = { Background, DarkRed },
  ErrorMsg = { Error },
  WarningMsg = { Warning },
  Float = { Val },
  Function = { FuncName },
  Identifier = { VarName },
  Keyword = { BuiltIn },
  Label = { Key },
  NonText = { Hidden },
  Number = { Val },
  PreProc = { Key },
  Special = { Cyan },
  SpecialKey = { BuiltIn },
  Statement = { BuiltIn },
  Tag = { Key },
  Title = { Normal, "bold" },
  Todo = { Normal, "bold" },
  Type = { TypeName },
  SpecialComment = { Info, "bold" },
  Typedef = { TypeName },
  PreCondit = { BuiltIn },
  Include = { BuiltIn },
  Ignore = { BuiltIn },
  Delimiter = { Decoration },
  Conceal = { Transparent, "bold" },

  -- CMP
  CmpItemAbbrMatch = { Cyan },
  CmpItemKindFunction = { Red },
  CmpItemKindSnippet = { Yellow },
  CmpItemKindText = { Normal },
  CmpItemKindKeyword = { Violet },

})
