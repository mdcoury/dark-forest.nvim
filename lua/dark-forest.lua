-- vim:fdm=marker

local util = require 'dark-forest.util'

local M = {}

-- Highlight Function And Color definitons {{{

local function highlight(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

local bg            = '#112211'
local fg            = '#adadad'

local red           = '#ff0000'
local green         = '#00ff00'
local blue          = '#0000ff'
local yellow        = '#ffff00'
local magenta       = '#ff00ff'
local cyan          = '#00ffff'

local azure         = '#0080ff'
local chartreuse    = '#80ff00'
local orange        = '#ff8000'

local teal          = '#008080'
local purple        = '#800080'
local olive         = '#808000'

local white         = '#ffffff'
local grey_light    = '#cccccc'
local grey          = '#888888'
local grey_dark     = '#555555'
local black         = '#000000'

local olive_drab    = '#6b8e23'
local maroon        = '#800000'
local crimson       = '#dc143c'
local yellow_banana = '#ffe135'
local green_matrix  = '#03A062'
local green_dark    = '#003B00'
local black_vampire = '#0D0208'
local green_forest  = '#228b22'
local green_islamic = '#008F11'
local green_lime    = '#adddad'
local malachite     = '#00ff41'
local gold          = '#FFD700'
local gold_dark     = '#AA6C39'
local pink          = '#FFC0CB'

local yellow_muted  = '#EBD4A2'
local green_muted   = '#5FA052'
local red_muted     = '#CB4C4E'
local blue_muted    = '#3B719F'
local orange_muted  = '#EB9C5C'

-- }}}

-- Ref: https://neovim.io/doc/user/syntax.html#highlight-groups

-- Editor Highlight Groups {{{

local editor_syntax = {
  ColorColumn   = { bg = grey_dark },
  Conceal       = { fg = black, bg = grey_light },
  CursorLine    = { bg = bg },
  -- Cursor       = { fg = bg_dark, bg = yellow },
  Directory     = { fg = azure, bold = true },
  DiffAdd       = { fg = green_muted },
  DiffChange    = { fg = yellow_muted },
  DiffDelete    = { fg = red_muted },
  DiffText      = { fg = blue_muted },
  EndOfBuffer   = { fg = grey_dark, bg = black },
  ErrorMsg      = { fg = red, bold = true },
  -- VertSplit    = { bg = bg_dark, fg = bg },
  Folded        = { fg = green_matrix, bg = bg, italic = true },
  FoldColumn    = { bg = gold, fg = black },
  -- IncSearch    = { bg = yellow, fg = bg },
  -- Substitute   = { bg = blue, fg = bg },
  LineLeft      = { fg = grey_dark },
  LineNr        = { fg = green_islamic, bg = bg, bold = false },
  CursorLineNr  = { fg = green_dark, bg = green_lime, bold = true },
  MatchParen    = { fg = cyan, bold = true },
  MsgArea       = { fg = fg, bg = bg },
  MsgSeparator  = { fg = bg, bg = fg },
  Normal        = { fg = fg, bg = black_vampire },
  NormalFloat   = { bg = grey_dark, fg = white },
  Pmenu         = { fg = azure, bold = true },
  -- PmenuSel     = { bg = pink, fg = black, bold = true },
  -- PmenuSbar    = { bg = pink },
  -- PmenuThumb   = { bg = fg },
  -- Search       = { bg = hollow },
  SignColumn    = { bg = green_forest, fg = black };
  -- SpecialKey   = { bg = bg_light },
  -- SpellBad     = { undercurl = true, sp = red },
  -- SpellCap     = { undercurl = true, sp = yellow },
  -- SpellLocal   = { undercurl = true, sp = orange },
  -- SpellRare    = { undercurl = true, sp = blue },
  StatusLine    = { fg = fg, bg = green_dark },
  -- TabLine       = { bg = bg, fg = fg }, 
  -- TabLineFill   = { bg = bg, fg = fg },
  -- TabLineSel    = { bg = bg, fg = fg, bold = true},
  -- Title        = { fg = gold },
  -- Visual       = { bg = hollow_lighter },
  -- VisualNOS    = { bg = hollow_lighter },
  WarningMsg    = { fg = yellow, italic = true },
  -- Whitespace   = { bg = yellow }, -- TODO: i don't know where this is
  WinBar        = { fg = white, bg = grey },
  WinBarNC      = { fg = grey_light, bg = grey_dark },

  NvimInternalError = { fg = white, bg = red },

  -- lsp
  -- DiagnosticError = { fg = red, bold = true, bg = util.darken(red, 0.1) },
  -- DiagnosticWarn = { fg = orange, bold = true, bg = util.darken(orange, 0.1) },
  -- DiagnosticInfo = { fg = yellow, bold = true, bg = util.darken(yellow, 0.1) },
  -- DiagnosticHint = { fg = green, bold = true, bg = util.darken(green, 0.1) },

  -- DiagnosticUnderlineError   = { undercurl = true, sp = red },
  -- DiagnosticUnderlineWarn = { undercurl = true, sp = yellow },
  -- DiagnosticUnderlineInfo = { undercurl = true, sp = green_high },
  -- DiagnosticUnderlineHint = { undercurl = true, sp = green },

  -- git highlighting
  -- gitcommitComment        = { fg = fg_dark, italic = true },
  -- gitcommitUntracked      = { fg = fg_dark, italic = true },
  -- gitcommitDiscarded      = { fg = fg_dark, italic = true },
  -- gitcommitSelected       = { fg = fg_dark, italic = true },
  -- gitcommitUnmerged       = { fg = green },
  -- gitcommitBranch         = { fg = purple },
  -- gitcommitNoBranch       = { fg = purple },
  -- gitcommitDiscardedType  = { fg = red },
  -- gitcommitSelectedType   = { fg = green },
  -- gitcommitUntrackedFile  = { fg = grey },
  -- gitcommitDiscardedFile  = { fg = grey_dark },
  -- gitcommitDiscardedArrow = { fg = red },
  -- gitcommitSelectedFile   = { fg = green },
  -- gitcommitSelectedArrow  = { fg = green },
  -- gitcommitUnmergedFile   = { fg = yellow },
  -- gitcommitUnmergedArrow  = { fg = yellow },
  -- gitcommitSummary        = { fg = fg_light },
  -- gitcommitOverflow       = { fg = red },
  -- gitcommitOnBranch      = {},
  -- gitcommitHeader        = {},
  -- gitcommitFile          = {},

}

-- }}}

-- Vim Default Code Syntax {{{

local code_syntax = {
  Comment   = { fg = gold_dark, italic = true, bold = true },

  Constant  = { fg = grey_light, bold = true },
  -- String    = { fg = grey_light, bold = true },
  -- Character = { fg = grey_light, bold = true },
  -- Number    = { fg = grey_light, bold = true },
  -- Boolean   = { fg = grey_light, bold = true },
  -- Float     = { fg = grey_light, bold = true },

  Identifier = { fg = fg, bold = true },
  -- Function   = { fg = fg, bold = true },

  Statement   = { fg = green_matrix, bold = true },
  -- Conditional = { fg = green_matrix, bold = true },
  -- Repeat         = { fg = blue, italic = true },
  Label          = { fg = orange, italic = true },
  Operator    = { fg = fg, bold = true, italic = true },
  Keyword     = { fg = olive_drab, bold = true },
  Exception      = { fg = olive, bold = true, italic = true },

  PreProc   = { fg = yellow_banana },
  -- Include   = { fg = yellow_banana },
  -- Define    = { fg = yellow_banana },
  Macro     = { fg = yellow_banana, bold = true },
  -- PreCondit = { fg = yellow_banana },

  Type            = { fg = green_matrix },
  StorageClass   = { fg = gold, italic = true },
  Structure      = { fg = teal },
  Typedef        = { fg = yellow },

  Special        = { fg = fg, bold = true },
  -- SpecialChar    = {},
  Tag            = { fg = orange, underline = true },
  -- Delimiter = { fg = yellow },
  -- SpecialComment = { fg = fg_light, bold = true },
  -- Debug          = {},

  Underlined     = { underline = true },
  -- Ignore         = {},
  Error         = { fg = red, italic = true },
  Todo           = { fg = gold, italic = true },
}

-- }}}

-- Plugin Highlight Groups {{{

local plugin_syntax = {
  GitGutterAdd          = { fg = green_muted },
  GitGutterChange       = { fg = yellow_muted },
  GitGutterDelete       = { fg = red_muted },
  GitGutterChangeDelete = { fg = orange_muted },

  -- diffAdded              = { fg = green },
  -- diffRemoved            = { fg = heavy_red },

  -- ['@punctuation.delimiter'] = { fg = grey_light },
  -- ['@punctuation.bracket']   = { fg = grey_light },
  -- ['@punctuation.special']   = { fg = grey_light },

  -- ['@constant']         = { fg = yellow },
  -- ['@constant.builtin'] = { fg = orange },
  -- ['@constant.macro']   = { fg = yellow },

  -- ['@string']         = { fg = green },
  -- ['@string.regex']   = { fg = cyan_dark },
  -- ['@string.escape']  = { fg = cyan_dark },
  -- ['@string.special'] = { fg = cyan },

  -- ['@number']               = { fg = orange },
  -- ['@boolean']              = { fg = orange },
  -- ['@float']                = { fg = orange },

  -- ['@function']         = { fg = blue_light },
  -- ['@function.call']    = { fg = blue_light },
  -- ['@function.builtin'] = { fg = purple },
  -- ['@function.macro']   = { fg = orange },

  -- ['@parameter']   = { fg = white },
  -- ['@constructor'] = { fg = yellow },

  -- ['@method']      = { fg = blue_light },
  -- ['@method.call'] = { fg = blue_light },

  -- ['@field']                = { fg = blue_light },
  -- ['@property']             = { fg = blue_light },

  -- ['@conditional']          = { fg = blue, italic = true },
  -- ['@repeat']               = { fg = blue, italic = true },
  -- ['@exception']            = { fg = blue, italic = true },
  -- ['@label']                = { fg = cyan_dark, italic = true },
  -- ['@debug']                = { fg = cyan_dark, italic = true },
  -- ['@include']              = { fg = cyan_dark },

  -- ['@operator'] = { fg = fg },
  -- ['@comment']  = { fg = fg_dark, italic = true },
  -- ['@error']    = {},
  -- ['@preproc']  = { fg = yellow },
  -- ['@define']   = { fg = purple },

  -- ['@keyword']          = { fg = blue },
  -- ['@keyword.function'] = { fg = blue_light },
  -- ['@keyword.operator'] = { fg = cyan },
  -- ['@keyword.return']   = { fg = blue },

  -- ['@type']            = { fg = yellow },
  -- ['@type.builtin']    = { fg = orange },
  -- ['@type.definition'] = { fg = blue },
  -- ['@type.qualifier']  = { fg = yellow },

  -- ['@tag']           = { fg = blue_light },
  -- ['@tag.delimiter'] = { fg = cyan },
  -- ['@tag.attribute'] = { fg = blue_light },

  -- ['@symbol']           = { fg = orange_light },
  -- ['@variable']         = {},
  -- ['@variable.builtin'] = { fg = orange },

  -- ['@text.title'] = { bold = true, underline = true },
  -- ['@text.reference'] = { fg = cyan },
  -- ['@text.uri'] = { underline = true, fg = green },
  -- ['@text.warning'] = { fg = purple, bold = true },

  -- nvim-cmp
  -- CmpItemAbbr = { fg = white },
  -- CmpItemAbbrDeprecated = { fg = red },
  -- CmpItemAbbrMatch = { fg = white },
  -- CmpItemAbbrMatchFuzzy = { fg = cyan },
  -- TODO: not sure where this goes
  -- CmpItemKind = { fg = cyan, bold = true },
  -- CmpItemMenu = { fg = cyan },

  -- NeotestAdapterName = { fg = blue_light },
  -- NeotestBorder = { fg = '#ffa000' }, -- TODO
  -- NeotestDir = { fg = blue, bold = true },
  -- NeotestExpandMarker = { fg = grey },
  -- NeotestFailed = { fg = heavy_red },
  -- NeotestFile = { fg = purple, bold = true, italic = true },
  -- NeotestFocused = { bold = true, underline = true },
  -- NeotestIndent = { fg = grey },
  -- NeotestMarked = { fg = green_high, bold = true, italic = true, underline = true },
  -- NeotestNamespace = { fg = purple },
  -- NeotestPassed = { fg = green_high },
  -- NeotestRunning = { fg = yellow },
  -- NeotestWinSelect = { fg = '#0022ff' }, -- TODO
  -- NeotestSkipped = { fg = '#ff00ff' }, -- TODO
  -- NeotestTarget = { fg = '#00ffff' }, -- TODO
  -- NeotestTest = { fg = green },
  -- NeotestUnknown = { fg = grey, bold = true },

  NvimTreeLspDiagnosticsError = { fg = red, bold = true },
  NvimTreeLspDiagnosticsWarning = { fg = yellow, bold = true },
  NvimTreeLspDiagnosticsInformation = { fg = green, bold = true },
  NvimTreeLspDiagnosticsHint = { fg = grey, bold = true },

  -- GitSignsAdd = { fg = green_high },
  -- GitSignsChange = { fg = orange_light },
  -- GitSignsDelete = { fg = heavy_red },
  -- GitSignsTopDelete = { fg = heavy_red },
  -- GitSignsChangeDelete = { fg = yellow_light },
}

-- }}}

-- Setting Neovim Terminal Color {{{

function M.setup()
  for group, styles in pairs(editor_syntax) do
    highlight(group, styles)
  end

  for group, styles in pairs(code_syntax) do
    highlight(group, styles)
  end

  for group, styles in pairs(plugin_syntax) do
    highlight(group, styles)
  end

  vim.api.nvim_set_var('terminal_color_0', black_vampire)
  vim.api.nvim_set_var('terminal_color_1', red)
  vim.api.nvim_set_var('terminal_color_2', green)
  vim.api.nvim_set_var('terminal_color_3', yellow)
  vim.api.nvim_set_var('terminal_color_4', pink)
  vim.api.nvim_set_var('terminal_color_5', gold)
  vim.api.nvim_set_var('terminal_color_6', cyan)
  vim.api.nvim_set_var('terminal_color_7', fg)
  vim.api.nvim_set_var('terminal_color_8', grey)
  vim.api.nvim_set_var('terminal_color_9', red)
  vim.api.nvim_set_var('terminal_color_10', green)
  vim.api.nvim_set_var('terminal_color_11', orange)
  vim.api.nvim_set_var('terminal_color_12', pink)
  vim.api.nvim_set_var('terminal_color_13', chartreuse)
  vim.api.nvim_set_var('terminal_color_14', cyan)
  vim.api.nvim_set_var('terminal_color_15', white)
  vim.api.nvim_set_var('terminal_color_background', black_vampire)
  vim.api.nvim_set_var('terminal_color_foreground', fg)
end

-- }}}

return M
