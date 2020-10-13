" phlebotinum.vim -- Vim color scheme.
" Author:      Curly-Mo (github.com/Curly-Mo)
" Author:      Colin Fahy (colin@cfahy.com)
" Webpage:     https://github.com/Curly-Mo/phlebotinum
" Version:     1.01
" License:     LGPL
" Description: When the Apprentice got his hands on some magic Beans.

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "phlebotinum"

if has("gui_running") || (has('termguicolors') && &termguicolors)
  let s:true_color = 1
else
  let s:true_color = 0
endif

if s:true_color || &t_Co >= 88
  let s:low_color = 0
else
  let s:low_color = 1
endif

" Configuration Variables:
" - g:phlebotinum_overrides          (default = {})
" - g:phlebotinum_black              (default = 'Gray')

if exists("g:phlebotinum_overrides")
  let s:overrides = g:phlebotinum_overrides
else
  let s:overrides = {}
endif

let s:background_color = "NONE"
if has_key(s:overrides, "background") && has_key(s:overrides["background"], "guibg")
  let s:background_color = s:overrides["background"]["guibg"]
endif

let s:disable_italics = 0
if has_key(s:overrides, "disable_italics")
  let s:disable_italics = s:overrides["disable_italics"]
endif

" TODO: do something with this
if exists("g:phlebotinum_black")
  let s:termBlack = g:phlebotinum_black
else
  let s:termBlack = "Gray"
endif

" palettes
" --------
let s:_trueblack   = { "gui": "#000000", "cterm": "16" }
let s:_darkerblack = { "gui": "#080808", "cterm": "232" }
let s:_darkblack   = { "gui": "#121212", "cterm": "233" }
let s:_black       = { "gui": "#1c1c1c", "cterm": "234" }
let s:_lightblack  = { "gui": "#262626", "cterm": "235" }
let s:_lightblack2 = { "gui": "#303030", "cterm": "236" }
let s:_lightblack3 = { "gui": "#444444", "cterm": "238" }
let s:_darkgrey    = { "gui": "#585858", "cterm": "240" }
let s:_grey        = { "gui": "#6c6c6c", "cterm": "242" }
let s:_lightgrey   = { "gui": "#808080", "cterm": "244" }
let s:_lightgrey2  = { "gui": "#c0c5ce", "cterm": "251" }
let s:_lightgrey3  = { "gui": "#cdd3de", "cterm": "252" }
let s:_coolgrey    = { "gui": "#4f5b66", "cterm": "59" }
let s:_coolgrey2   = { "gui": "#65737e", "cterm": "66" }
let s:_coolgrey3   = { "gui": "#8090a0", "cterm": "103" }
let s:_coolgrey4   = { "gui": "#a7adba", "cterm": "145" }
let s:_darkwhite   = { "gui": "#888888", "cterm": "245" }
let s:_darkwhite2  = { "gui": "#d8dee9", "cterm": "188" }
let s:_white       = { "gui": "#bcbcbc", "cterm": "250" }

let s:_darkred     = { "gui": "#5f0000", "cterm": "52" }
let s:_darkred2    = { "gui": "#703020", "cterm": "131" }
let s:_red         = { "gui": "#af5f5f", "cterm": "131" }
let s:_lightred    = { "gui": "#cf6a4c", "cterm": "215" }
let s:_lightred2   = { "gui": "#ab7967", "cterm": "137" }
let s:_brown       = { "gui": "#af5f00", "cterm": "130" }
let s:_orange      = { "gui": "#fac863", "cterm": "221" }
let s:_orange2     = { "gui": "#ffba7b", "cterm": "215" }
let s:_orange3     = { "gui": "#ffb964", "cterm": "215" }
let s:_yellow      = { "gui": "#e6db74", "cterm": "184" }
let s:_wheat       = { "gui": "#87875f", "cterm": "101" }
let s:_green       = { "gui": "#5f875f", "cterm": "65" }
let s:_green2      = { "gui": "#99ad6a", "cterm": "108" }
let s:_green3      = { "gui": "#87af87", "cterm": "108" }
let s:_teal        = { "gui": "#5f8787", "cterm": "66" }
let s:_cyan        = { "gui": "#008080", "cterm": "6" }
let s:_cyan2       = { "gui": "#5fafaf", "cterm": "73" }
let s:_cyan3       = { "gui": "#5fb3b3", "cterm": "73" }
let s:_blue        = { "gui": "#b1d8f6", "cterm": "153" }
let s:_blue2       = { "gui": "#8fbfdc", "cterm": "110" }
let s:_blue3       = { "gui": "#8fafd7", "cterm": "110" }
let s:_blue4       = { "gui": "#8197bf", "cterm": "67" }
let s:_blue5       = { "gui": "#5f87af", "cterm": "67" }
let s:_purple      = { "gui": "#5f5f87", "cterm": "60" }
let s:_purple2     = { "gui": "#8787af", "cterm": "103" }
let s:_pink        = { "gui": "#c6b6ee", "cterm": "183" }
let s:_pink2       = { "gui": "#c594c5", "cterm": "176" }

let s:br_green     = { "gui": "#008080", "cterm": "6" }
let s:br_yellow    = { "gui": "#ffffaf", "cterm": "229" }
let s:br_orange    = { "gui": "#ff8700", "cterm": "208" }
let s:br_blue      = { "gui": "#8fafd7", "cterm": "110" }
let s:br_purple    = { "gui": "#c594c5", "cterm": "176" }
let s:br_cyan      = { "gui": "#5fb3b3", "cterm": "73" }
let s:br_white     = { "gui": "#ffffff", "cterm": "231" }

let s:_fg          = { "gui": s:_white.gui, "cterm": s:_white.cterm }
let s:_bg          = { "gui": s:background_color, "cterm": s:_lightblack.cterm }

" Convenience method for setting highlight group
" --------
function! s:highlight_group(group, style)
  let s:ctermformat = "NONE"
  let s:guiformat = "NONE"
  if has_key(a:style, "format")
    let s:ctermformat = a:style.format
    let s:guiformat = a:style.format
  endif
  if s:disable_italics == 1
    let s:ctermformat = substitute(s:ctermformat, ",italic", "", "")
    let s:ctermformat = substitute(s:ctermformat, "italic,", "", "")
    let s:ctermformat = substitute(s:ctermformat, "italic", "", "")
    let s:guiformat = substitute(s:guiformat, ",italic", "", "")
    let s:guiformat = substitute(s:guiformat, "italic,", "", "")
    let s:guiformat = substitute(s:guiformat, "italic", "", "")
  endif
  let l:ctermfg = (has_key(a:style, "fg") ? a:style.fg.cterm : "NONE")
  let l:ctermbg = (has_key(a:style, "bg") ? a:style.bg.cterm : "NONE")
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg") ? a:style.fg.gui : "NONE")
    \ "guibg="   (has_key(a:style, "bg") ? a:style.bg.gui : "NONE")
    \ "guisp="   (has_key(a:style, "sp") ? a:style.sp.gui : "NONE")
    \ "gui="     (!empty(s:guiformat) ? s:guiformat : "NONE")
    \ "ctermfg=" . l:ctermfg
    \ "ctermbg=" . l:ctermbg
    \ "cterm="   (!empty(s:ctermformat) ? s:ctermformat : "NONE")
endfunction


" True Colors
" -----------
if (!s:low_color)
  " Generic Syntax Highlighting
  " ---------------------------
  call s:highlight_group("Normal", { "fg": s:_fg, "bg": s:_bg })
  call s:highlight_group("NonText", {"fg": s:_grey})
  call s:highlight_group("EndOfBuffer", {"fg": s:_grey})
  call s:highlight_group("LineNr", {"fg": s:_grey, "bg": s:_bg})
  call s:highlight_group("FoldColumn", {"fg": s:_grey, "bg": s:_bg})
  call s:highlight_group("Folded", {"fg": s:_grey, "bg": s:_bg})
  call s:highlight_group("MatchParen", {"fg": s:_orange, "bg": s:_bg})
  call s:highlight_group("SignColumn", {"fg": s:_grey, "bg": s:_bg})
  call s:highlight_group("Comment", {"fg": s:_coolgrey3, "format": "italic"})
  call s:highlight_group("Conceal", {"fg": s:_white})
  call s:highlight_group("Constant", {"fg": s:_red})
  call s:highlight_group("Error", {"fg": s:_lightred, "format": "reverse"})
  call s:highlight_group("Identifier", {"fg": s:_teal})
  call s:highlight_group("Ignore", {})
  call s:highlight_group("PreProc", {"fg": s:_purple})
  call s:highlight_group("Special", {"fg": s:_purple})
  call s:highlight_group("Statement", {"fg": s:_brown})
  call s:highlight_group("String", {"fg": s:_red})
  call s:highlight_group("Todo", {"format": "reverse"})
  call s:highlight_group("Type", {"fg": s:_green})
  call s:highlight_group("TypeDef", {"fg": s:_purple})
  call s:highlight_group("Underlined", {"fg": s:_teal, "format": "underline"})
  call s:highlight_group("Pmenu", {"fg": s:_white, "bg": s:_lightblack2})
  call s:highlight_group("PmenuSbar", {"bg": s:_lightblack2})
  call s:highlight_group("PmenuSel", {"fg": s:_bg, "bg": s:_purple})
  call s:highlight_group("PmenuThumb", {"fg": s:_darkblack, "bg": s:_darkblack})
  call s:highlight_group("ErrorMsg", {"fg": s:_bg, "bg": s:_lightred})
  call s:highlight_group("ModeMsg", {"fg": s:_bg, "bg": s:_green2})
  call s:highlight_group("MoreMsg", {"fg": s:_teal})
  call s:highlight_group("Question", {"fg": s:_green2})
  call s:highlight_group("WarningMsg", {"fg": s:_lightred})
  call s:highlight_group("TabLine", {"fg": s:_wheat, "bg": s:_lightblack3})
  call s:highlight_group("TabLineFill", {"fg": s:_lightblack3, "bg": s:_lightblack3})
  call s:highlight_group("TabLineSel", {"fg": s:_bg, "bg": s:_wheat})
  call s:highlight_group("ToolbarLine", {"bg": s:_bg})
  call s:highlight_group("ToolbarButton", {"fg": s:_white, "bg": s:_grey})
  call s:highlight_group("Cursor", {"bg": s:_grey})
  call s:highlight_group("CursorColumn", {"bg": s:_lightblack2})
  call s:highlight_group("CursorLineNr", {"fg": s:_fg, "bg": s:_lightblack})
  call s:highlight_group("CursorLine", {"bg": s:_lightblack})
  call s:highlight_group("helpLeadBlank", {})
  call s:highlight_group("helpNormal", {})
  call s:highlight_group("StatusLine", {"fg": s:_grey, "bg": s:_darkblack})
  call s:highlight_group("StatusLineNC", {"fg": s:_white, "bg": s:_darkblack})
  " call s:highlight_group("StatusLineTerm", {"fg": s:_grey, "bg": s:_darkblack})
  " call s:highlight_group("StatusLineTermNC", {"fg": s:_grey, "bg": s:_darkblack})
  call s:highlight_group("Visual", {"fg": s:_blue3, "bg": s:_bg, "format": "reverse"})
  call s:highlight_group("VisualNOS", {"format": "underline"})
  call s:highlight_group("VertSplit", {"fg": s:_grey, "bg": s:_bg})
  call s:highlight_group("WildMenu", {"fg": s:_bg, "bg": s:_blue3})
  call s:highlight_group("Function", {"fg": s:_teal})
  call s:highlight_group("SpecialKey", {"fg": s:_grey})
  call s:highlight_group("Title", {"fg": s:br_white})
  call s:highlight_group("DiffAdd", {"fg": s:_green2, "bg": s:_bg, "format": "reverse"})
  call s:highlight_group("DiffChange", {"fg": s:_purple2, "bg": s:_bg, "format": "reverse"})
  call s:highlight_group("DiffDelete", {"fg": s:_lightred, "bg": s:_bg, "format": "reverse"})
  call s:highlight_group("DiffText", {"fg": s:_brown, "bg": s:_bg, "format": "reverse"})
  call s:highlight_group("IncSearch", {"fg": s:_pink2, "bg": s:_bg, "format": "underline"})
  call s:highlight_group("Search", {"fg": s:_lightblack, "bg": s:_pink2, "format": "underline"})
  call s:highlight_group("Directory", {"fg": s:_cyan2})
  call s:highlight_group("debugPC", {"bg": s:_blue})
  call s:highlight_group("debugBreakpoint", {"bg": s:_lightred})
  call s:highlight_group("SpellBad", {"fg": s:_lightred, "format": "undercurl", "sp": s:_lightred})
  call s:highlight_group("SpellCap", {"fg": s:_cyan2, "format": "undercurl", "sp": s:_cyan2})
  call s:highlight_group("SpellLocal", {"fg": s:_green, "format": "undercurl", "sp": s:_green})
  call s:highlight_group("SpellRare", {"fg": s:_orange, "format": "undercurl", "sp": s:_orange})
  call s:highlight_group("ColorColumn", {"bg": s:_bg})

" False Colors
" -----------
elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
  set t_Co=16

  hi Normal ctermbg=black ctermfg=lightgrey cterm=NONE
  hi NonText ctermbg=NONE ctermfg=darkgrey cterm=NONE
  hi EndOfBuffer ctermbg=NONE ctermfg=darkgrey cterm=NONE
  hi LineNr ctermbg=black ctermfg=lightgrey cterm=NONE
  hi FoldColumn ctermbg=black ctermfg=lightgrey cterm=NONE
  hi Folded ctermbg=black ctermfg=lightgrey cterm=NONE
  hi MatchParen ctermbg=black ctermfg=yellow cterm=NONE
  hi SignColumn ctermbg=black ctermfg=lightgrey cterm=NONE
  hi Comment ctermbg=NONE ctermfg=darkgrey cterm=NONE
  hi Conceal ctermbg=NONE ctermfg=lightgrey cterm=NONE
  hi Constant ctermbg=NONE ctermfg=red cterm=NONE
  hi Error ctermbg=NONE ctermfg=darkred cterm=reverse
  hi Identifier ctermbg=NONE ctermfg=darkblue cterm=NONE
  hi Ignore ctermbg=NONE ctermfg=NONE cterm=NONE
  hi PreProc ctermbg=NONE ctermfg=darkcyan cterm=NONE
  hi Special ctermbg=NONE ctermfg=darkgreen cterm=NONE
  hi Statement ctermbg=NONE ctermfg=blue cterm=NONE
  hi String ctermbg=NONE ctermfg=green cterm=NONE
  hi Todo ctermbg=NONE ctermfg=NONE cterm=reverse
  hi Type ctermbg=NONE ctermfg=magenta cterm=NONE
  hi Underlined ctermbg=NONE ctermfg=darkcyan cterm=underline
  hi Pmenu ctermbg=darkgrey ctermfg=lightgrey cterm=NONE
  hi PmenuSbar ctermbg=darkgrey ctermfg=NONE cterm=NONE
  hi PmenuSel ctermbg=darkcyan ctermfg=black cterm=NONE
  hi PmenuThumb ctermbg=darkcyan ctermfg=darkcyan cterm=NONE
  hi ErrorMsg ctermbg=darkred ctermfg=black cterm=NONE
  hi ModeMsg ctermbg=green ctermfg=black cterm=NONE
  hi MoreMsg ctermbg=NONE ctermfg=darkcyan cterm=NONE
  hi Question ctermbg=NONE ctermfg=green cterm=NONE
  hi WarningMsg ctermbg=NONE ctermfg=darkred cterm=NONE
  hi TabLine ctermbg=darkgrey ctermfg=darkyellow cterm=NONE
  hi TabLineFill ctermbg=darkgrey ctermfg=darkgrey cterm=NONE
  hi TabLineSel ctermbg=darkyellow ctermfg=black cterm=NONE
  hi ToolbarLine ctermbg=black ctermfg=NONE cterm=NONE
  hi ToolbarButton ctermbg=darkgrey ctermfg=lightgrey cterm=NONE
  hi Cursor ctermbg=lightgrey ctermfg=NONE cterm=NONE
  hi CursorColumn ctermbg=darkgrey ctermfg=NONE cterm=NONE
  hi CursorLineNr ctermbg=darkgrey ctermfg=cyan cterm=NONE
  hi CursorLine ctermbg=darkgrey ctermfg=NONE cterm=NONE
  hi helpLeadBlank ctermbg=NONE ctermfg=NONE cterm=NONE
  hi helpNormal ctermbg=NONE ctermfg=NONE cterm=NONE
  hi StatusLine ctermbg=darkyellow ctermfg=black cterm=NONE
  hi StatusLineNC ctermbg=darkgrey ctermfg=darkyellow cterm=NONE
  hi StatusLineTerm ctermbg=darkyellow ctermfg=black cterm=NONE
  hi StatusLineTermNC ctermbg=darkgrey ctermfg=darkyellow cterm=NONE
  hi Visual ctermbg=black ctermfg=blue cterm=reverse
  hi VisualNOS ctermbg=NONE ctermfg=NONE cterm=underline
  hi VertSplit ctermbg=darkgrey ctermfg=darkgrey cterm=NONE
  hi WildMenu ctermbg=blue ctermfg=black cterm=NONE
  hi Function ctermbg=NONE ctermfg=yellow cterm=NONE
  hi SpecialKey ctermbg=NONE ctermfg=darkgrey cterm=NONE
  hi Title ctermbg=NONE ctermfg=white cterm=NONE
  hi DiffAdd ctermbg=black ctermfg=green cterm=reverse
  hi DiffChange ctermbg=black ctermfg=magenta cterm=reverse
  hi DiffDelete ctermbg=black ctermfg=darkred cterm=reverse
  hi DiffText ctermbg=black ctermfg=red cterm=reverse
  hi IncSearch ctermbg=darkred ctermfg=black cterm=NONE
  hi Search ctermbg=yellow ctermfg=black cterm=NONE
  hi Directory ctermbg=NONE ctermfg=cyan cterm=NONE
  hi debugPC ctermbg=darkblue ctermfg=NONE cterm=NONE
  hi debugBreakpoint ctermbg=darkred ctermfg=NONE cterm=NONE
  hi SpellBad ctermbg=NONE ctermfg=darkred cterm=undercurl
  hi SpellCap ctermbg=NONE ctermfg=cyan cterm=undercurl
  hi SpellLocal ctermbg=NONE ctermfg=darkgreen cterm=undercurl
  hi SpellRare ctermbg=NONE ctermfg=red cterm=undercurl
  hi ColorColumn ctermbg=black ctermfg=NONE cterm=NONE
endif

" Dupes
" -----
hi link Terminal Normal
hi link Number Constant
hi link CursorIM Cursor
hi link Boolean Constant
hi link Character Constant
hi link Conditional Statement
hi link Debug Special
hi link Define PreProc
hi link Delimiter Special
hi link Exception Statement
hi link Float Number
hi link HelpCommand Statement
hi link HelpExample Statement
hi link Include PreProc
hi link Keyword Statement
hi link Label Statement
hi link Macro PreProc
hi link Number Constant
hi link Operator Statement
hi link PreCondit PreProc
hi link Repeat Statement
hi link SpecialChar Special
hi link SpecialComment Special
hi link StorageClass Type
hi link Structure Type
hi link Tag Special
hi link Terminal Normal
hi link Typedef Type
hi link htmlEndTag htmlTagName
hi link htmlLink Function
hi link htmlSpecialTagName htmlTagName
hi link htmlTag htmlTagName
hi link htmlBold Normal
hi link htmlItalic Normal
hi link xmlTag Statement
hi link xmlTagName Statement
hi link xmlEndTag Statement
hi link markdownItalic Preproc
hi link asciidocQuotedEmphasized Preproc
hi link diffBDiffer WarningMsg
hi link diffCommon WarningMsg
hi link diffDiffer WarningMsg
hi link diffIdentical WarningMsg
hi link diffIsA WarningMsg
hi link diffNoEOL WarningMsg
hi link diffOnly WarningMsg
hi link diffRemoved WarningMsg
hi link diffAdded String
hi link QuickFixLine Search


" nvim-treesitter
" -----
hi link TSConstBuiltin Constant
hi link TSStringRegex  SpecialChar
hi link TSStringEscape Character
hi link TSFuncBuiltin Function
hi link TSConstructor Typedef
hi link TSVariableBuiltin Identifier
hi link TSURI Tag


let g:terminal_ansi_colors = [
        \ s:_black.gui,
        \ s:_lightred.gui,
        \ s:_green.gui,
        \ s:_brown.gui,
        \ s:_blue.gui,
        \ s:_purple.gui,
        \ s:_teal.gui,
        \ s:_grey.gui,
        \ s:_lightblack3.gui,
        \ s:_orange.gui,
        \ s:_green2.gui,
        \ s:_yellow.gui,
        \ s:_blue.gui,
        \ s:_purple2.gui,
        \ s:_cyan2.gui,
        \ s:_white.gui
        \ ]

if has("nvim") && exists("&termguicolors") && &termguicolors
  let g:terminal_color_0  = s:_black.gui
  let g:terminal_color_1  = s:_lightred.gui
  let g:terminal_color_2  = s:_green.gui
  let g:terminal_color_3  = s:_brown.gui
  let g:terminal_color_4  = s:_blue.gui
  let g:terminal_color_5  = s:_purple.gui
  let g:terminal_color_6  = s:_teal.gui
  let g:terminal_color_7  = s:_grey.gui
  let g:terminal_color_8  = s:_lightblack3.gui
  let g:terminal_color_9  = s:_orange.gui
  let g:terminal_color_10 = s:_green2.gui
  let g:terminal_color_11 = s:_yellow.gui
  let g:terminal_color_12 = s:_blue.gui
  let g:terminal_color_13 = s:_purple2.gui
  let g:terminal_color_14 = s:_cyan2.gui
  let g:terminal_color_15 = s:_white.gui
endif
