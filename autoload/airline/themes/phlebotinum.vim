" Color palette
" let s:gui00 = '#151515'
" let s:gui01 = '#262626'
" let s:gui02 = '#4f5b66'
" let s:gui03 = '#65737e'
" let s:gui04 = '#a7adba'
" let s:gui05 = '#c0c5ce'
" let s:gui06 = '#cdd3de'
" let s:gui07 = '#d8dee9'
" let s:gui08 = '#5f0000'
" let s:gui09 = '#ffba7b'
" let s:gui0A = '#fac863'
" let s:gui0B = '#5f8787'
" let s:gui0C = '#5fb3b3'
" let s:gui0D = '#b1d8f6'
" let s:gui0E = '#c594c5'
" let s:gui0F = '#ab7967'
" let s:guiBG = '#262626'
" let s:guiFG = '#bcbcbc'

" let s:cterm00 = '233'
" let s:cterm01 = '235'
" let s:cterm02 = '59'
" let s:cterm03 = '66'
" let s:cterm04 = '145'
" let s:cterm05 = '152'
" let s:cterm06 = '188'
" let s:cterm07 = '189'
" let s:cterm08 = '52'
" let s:cterm09 = '215'
" let s:cterm0A = '221'
" let s:cterm0B = '66'
" let s:cterm0C = '73'
" let s:cterm0D = '25'
" let s:cterm0E = '176'
" let s:cterm0F = '137'
" let s:ctermBG = '235'
" let s:ctermFG = '250'

" Color palette
let s:_darkblack   = { "gui": "#151515", "cterm": "16" }
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

let g:airline#themes#phlebotinum#palette = {}
let s:modified = { 'airline_c': [ s:_orange2.gui, '', s:_orange2.cterm, '', '' ] }

" Normal mode
let s:N1 = [ s:_fg.gui, s:_darkblack.gui, s:_fg.cterm, s:_darkblack.cterm  ]
let s:N2 = [ s:_fg.gui, s:_lightblack.gui, s:_fg.cterm, s:_lightblack.cterm  ]
let s:N3 = [ s:_grey.gui, s:_darkblack.gui, s:_grey.cterm, s:_darkblack.cterm  ]
let g:airline#themes#phlebotinum#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#phlebotinum#palette.normal_modified = s:modified

" Insert mode
let s:I1 = [ s:_bg.gui, s:_teal.gui, s:_bg.cterm, s:_teal.cterm  ]
let s:I2 = s:N2
let s:I3 = [ s:_grey.gui, s:_darkblack.gui, s:_grey.cterm, s:_darkblack.cterm  ]
let g:airline#themes#phlebotinum#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#phlebotinum#palette.insert_modified = s:modified

" Visual mode
let s:V1 = [ s:_fg.gui, s:_darkred2.gui, s:_fg.cterm, s:_darkred2.cterm ]
let s:V2 = s:N2
let s:V3 = s:I3
let g:airline#themes#phlebotinum#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#phlebotinum#palette.visual_modified = s:modified

" Replace mode
let s:R1 = [ s:_darkred2.gui, s:_lightblack.gui, s:_darkred2.cterm, s:_darkblack.cterm ]
let s:R2 = s:N2
let s:R3 = s:I3
let g:airline#themes#phlebotinum#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#phlebotinum#palette.replace_modified = s:modified

" Inactive mode
let s:IN1 = [ s:_grey.gui, s:_darkblack.gui, s:_grey.cterm, s:_darkblack.cterm ]
let s:IN2 = [ s:_grey.gui, s:_darkblack.gui, s:_grey.cterm, s:_darkblack.cterm ]
let s:IN3 = [ s:_grey.gui, s:_darkblack.gui, s:_grey.cterm, s:_darkblack.cterm ]
let g:airline#themes#phlebotinum#palette.inactive = airline#themes#generate_color_map(s:IN1, s:IN2, s:IN3)
let g:airline#themes#phlebotinum#palette.inactive_modified = s:modified

" red accent used by readonly lock symbol
let g:airline#themes#phlebotinum#palette.accents = {
      \ 'red': [ s:_darkred2.gui , '' , s:_darkred2.cterm , ''  ]
      \ }

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let s:CP1 = [ s:_fg.gui, s:_lightblack.gui, s:_fg.cterm, s:_lightblack.cterm ]
let s:CP2 = [ s:_fg.gui, s:_coolgrey.gui, s:_fg.cterm, s:_coolgrey2.cterm ]
let s:CP3 = [ s:_fg.gui, s:_blue.gui, s:_fg.cterm, s:_blue.cterm ]
let g:airline#themes#phlebotinum#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)
