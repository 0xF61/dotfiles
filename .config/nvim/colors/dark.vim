set background=dark
let g:colors_name='dark'

highlight clear
if exists('syntax_on')
  syntax reset
endif

" Black    0 #4E4E4E  8  #7C7C7C
" Red      1 #FF6C60  9  #FFB6B0
" Green    2 #A8FF60  10 #CEFFAB
" Yellow   3 #FFFFB6  11 #FFFFCB
" Blue     4 #96CBFE  12 #B5DCFE
" Magenta  5 #FF73FD  13 #FF9CFE
" Cyan     6 #C6C5FE  14 #DFDFFE
" White    7 #EEEEEE  15 #FFFFFF

highlight Normal                     term=NONE      cterm=NONE      ctermbg=NONE ctermfg=7    gui=NONE      guibg=#000000  guifg=#EEEEEE

highlight ColorColumn                term=NONE      cterm=NONE      ctermbg=88   ctermfg=7    gui=NONE      guibg=DarkRed  guifg=#EEEEEE
highlight Comment                    term=NONE      cterm=NONE      ctermbg=NONE ctermfg=0    gui=italic    guibg=#000000  guifg=#4E4E4E
highlight Conceal                    term=NONE      cterm=NONE      ctermbg=248  ctermfg=252  gui=NONE      guibg=DarkGrey guifg=LightGrey
highlight Conditional                term=bold      cterm=bold      ctermbg=NONE ctermfg=68   gui=bold      guibg=#000000  guifg=#6D90D1
highlight Constant                   term=NONE      cterm=NONE      ctermbg=NONE ctermfg=158  gui=NONE      guibg=#000000  guifg=#B1F7E0
highlight Cursor                     term=NONE      cterm=NONE      ctermbg=146  ctermfg=233  gui=NONE      guibg=#B8C2CC  guifg=#151616
highlight CursorColumn               term=NONE      cterm=NONE      ctermbg=233  ctermfg=7    gui=NONE      guibg=#121212  guifg=#EEEEEE
highlight CursorLine                 term=NONE      cterm=NONE      ctermbg=235  ctermfg=NONE gui=NONE      guibg=#222324  guifg=NONE
highlight CursorLineNr               term=NONE      cterm=NONE      ctermbg=235  ctermfg=59   gui=NONE      guibg=#222324  guifg=#484E52
highlight Delimiter                  term=NONE      cterm=NONE      ctermbg=NONE ctermfg=37   gui=NONE      guibg=#000000  guifg=#00A0A0
highlight DiffAdd                    term=NONE      cterm=NONE      ctermbg=233  ctermfg=155  gui=NONE      guibg=#121212  guifg=#C1F360
highlight DiffChange                 term=NONE      cterm=NONE      ctermbg=233  ctermfg=7    gui=NONE      guibg=#121212  guifg=#EEEEEE
highlight DiffDelete                 term=NONE      cterm=NONE      ctermbg=233  ctermfg=203  gui=NONE      guibg=#121212  guifg=#FF6C60
highlight DiffText                   term=NONE      cterm=NONE      ctermbg=236  ctermfg=231  gui=NONE      guibg=#303030  guifg=White
highlight Directory                  term=NONE      cterm=NONE      ctermbg=NONE ctermfg=51   gui=NONE      guibg=#000000  guifg=Cyan
highlight Error                      term=undercurl cterm=undercurl ctermbg=NONE ctermfg=7    gui=undercurl guibg=#000000  guifg=#EEEEEE
highlight ErrorMsg                   term=NONE      cterm=NONE      ctermbg=203  ctermfg=16   gui=NONE      guibg=#FF6C60  guifg=#000000
highlight FoldColumn                 term=NONE      cterm=NONE      ctermbg=NONE ctermfg=7    gui=NONE      guibg=#000000  guifg=#EEEEEE
highlight Folded                     term=NONE      cterm=NONE      ctermbg=NONE ctermfg=7    gui=NONE      guibg=#000000  guifg=#EEEEEE
highlight Function                   term=NONE      cterm=NONE      ctermbg=NONE ctermfg=223  gui=NONE      guibg=#000000  guifg=#FFD2A7
highlight GitGutterAddDefault        term=NONE      cterm=NONE      ctermbg=NONE ctermfg=28   gui=NONE      guibg=#000000  guifg=#009900
highlight GitGutterAddInvisible      term=NONE      cterm=NONE      ctermbg=NONE ctermfg=16   gui=NONE      guibg=#000000  guifg=Black
highlight GitGutterChangeDefault     term=NONE      cterm=NONE      ctermbg=NONE ctermfg=142  gui=NONE      guibg=#000000  guifg=#bbbb00
highlight GitGutterChangeInvisble    term=NONE      cterm=NONE      ctermbg=NONE ctermfg=7    gui=NONE      guibg=#000000  guifg=#EEEEEE
highlight GitGutterChangeInvisible   term=NONE      cterm=NONE      ctermbg=NONE ctermfg=16   gui=NONE      guibg=#000000  guifg=Black
highlight GitGutterChangeLineDefault term=bold      cterm=bold      ctermbg=233  ctermfg=7    gui=bold      guibg=#121212  guifg=#EEEEEE
highlight GitGutterDeleteDefault     term=NONE      cterm=NONE      ctermbg=NONE ctermfg=196  gui=NONE      guibg=#000000  guifg=#ff2222
highlight GitGutterDeleteInvisible   term=NONE      cterm=NONE      ctermbg=NONE ctermfg=16   gui=NONE      guibg=#000000  guifg=Black
highlight Identifier                 term=NONE      cterm=NONE      ctermbg=NONE ctermfg=189  gui=NONE      guibg=#000000  guifg=#D3C4F7
highlight Ignore                     term=NONE      cterm=NONE      ctermbg=NONE ctermfg=250  gui=NONE      guibg=Black    guifg=Gray
highlight IncSearch                  term=reverse   cterm=reverse   ctermbg=NONE ctermfg=7    gui=reverse   guibg=#000000  guifg=#EEEEEE
highlight Keyword                    term=bold      cterm=bold      ctermbg=NONE ctermfg=117  gui=bold      guibg=#000000  guifg=#8FC4FD
highlight LineNr                     term=NONE      cterm=NONE      ctermbg=NONE ctermfg=59   gui=NONE      guibg=#000000  guifg=#484E52
highlight MatchParen                 term=NONE      cterm=NONE      ctermbg=NONE ctermfg=117  gui=NONE      guibg=#000000  guifg=#8FC4FD
highlight ModeMsg                    term=NONE      cterm=NONE      ctermbg=155  ctermfg=233  gui=NONE      guibg=#C1F360  guifg=#151616
highlight MoreMsg                    term=bold      cterm=bold      ctermbg=NONE ctermfg=29   gui=bold      guibg=#000000  guifg=SeaGreen
highlight NonText                    term=NONE      cterm=NONE      ctermbg=NONE ctermfg=59   gui=NONE      guibg=#000000  guifg=#484E52
highlight Number                     term=NONE      cterm=NONE      ctermbg=NONE ctermfg=13   gui=NONE      guibg=#000000  guifg=#FF9CFE
highlight Operator                   term=NONE      cterm=NONE      ctermbg=NONE ctermfg=68   gui=NONE      guibg=#000000  guifg=#6D90D1
highlight Pmenu                      term=NONE      cterm=NONE      ctermbg=236  ctermfg=195  gui=NONE      guibg=#2E3132  guifg=#E6EEF5
highlight PmenuSbar                  term=NONE      cterm=NONE      ctermbg=231  ctermfg=16   gui=NONE      guibg=White    guifg=Black
highlight PmenuSel                   term=NONE      cterm=NONE      ctermbg=155  ctermfg=233  gui=NONE      guibg=#C1F360  guifg=#151616
highlight PmenuThumb                 term=NONE      cterm=NONE      ctermbg=231  ctermfg=7    gui=NONE      guibg=White    guifg=#EEEEEE
highlight PreProc                    term=NONE      cterm=NONE      ctermbg=NONE ctermfg=117  gui=NONE      guibg=#000000  guifg=#8FC4FD
highlight Question                   term=NONE      cterm=NONE      ctermbg=NONE ctermfg=155  gui=NONE      guibg=#000000  guifg=#C1F360
highlight Search                     term=underline cterm=underline ctermbg=NONE ctermfg=7    gui=underline guibg=#000000  guifg=#EEEEEE
highlight SignColumn                 term=NONE      cterm=NONE      ctermbg=NONE ctermfg=0    gui=NONE      guibg=#000000  guifg=#EEEEEE
highlight Special                    term=NONE      cterm=NONE      ctermbg=NONE ctermfg=173  gui=NONE      guibg=#000000  guifg=#EB7A4B
highlight SpecialKey                 term=NONE      cterm=NONE      ctermbg=233  ctermfg=59   gui=NONE      guibg=#151515  guifg=#484E52
highlight SpellBad                   term=undercurl cterm=undercurl ctermbg=NONE ctermfg=NONE gui=undercurl guibg=#000000  guifg=NONE
highlight SpellCap                   term=undercurl cterm=undercurl ctermbg=NONE ctermfg=7    gui=undercurl guibg=#000000  guifg=#EEEEEE
highlight SpellLocal                 term=undercurl cterm=undercurl ctermbg=NONE ctermfg=7    gui=undercurl guibg=#000000  guifg=#EEEEEE
highlight SpellRare                  term=undercurl cterm=undercurl ctermbg=NONE ctermfg=7    gui=undercurl guibg=#000000  guifg=#EEEEEE
highlight Statement                  term=NONE      cterm=NONE      ctermbg=NONE ctermfg=68   gui=NONE      guibg=#000000  guifg=#6D90D1
highlight StatusLine                 term=NONE      cterm=NONE      ctermbg=235  ctermfg=0    gui=NONE      guibg=#222324  guifg=#657380
highlight StatusLineNC               term=NONE      cterm=NONE      ctermbg=233  ctermfg=0    gui=NONE      guibg=#151616  guifg=#657380
highlight String                     term=NONE      cterm=NONE      ctermbg=NONE ctermfg=155  gui=NONE      guibg=#000000  guifg=#C1F360
highlight TabLine                    term=underline cterm=underline ctermbg=248  ctermfg=7    gui=underline guibg=DarkGrey guifg=#EEEEEE
highlight TabLineFill                term=reverse   cterm=reverse   ctermbg=NONE ctermfg=7    gui=reverse   guibg=#000000  guifg=#EEEEEE
highlight TabLineSel                 term=bold      cterm=bold      ctermbg=NONE ctermfg=7    gui=bold      guibg=#000000  guifg=#EEEEEE
highlight TermCursor                 term=reverse   cterm=reverse   ctermbg=NONE ctermfg=7    gui=reverse   guibg=#000000  guifg=#EEEEEE
highlight TermCursorNC               term=NONE      cterm=NONE      ctermbg=NONE ctermfg=7    gui=NONE      guibg=#000000  guifg=#EEEEEE
highlight Title                      term=bold      cterm=bold      ctermbg=NONE ctermfg=229  gui=bold      guibg=#000000  guifg=#FFFFB6
highlight Todo                       term=NONE      cterm=NONE      ctermbg=NONE ctermfg=245  gui=NONE      guibg=#000000  guifg=#8F8F8F
highlight Type                       term=NONE      cterm=NONE      ctermbg=NONE ctermfg=229  gui=NONE      guibg=#000000  guifg=#FFFFB6
highlight Underlined                 term=underline cterm=underline ctermbg=NONE ctermfg=111  gui=underline guibg=#000000  guifg=#80a0ff
highlight User1                      term=NONE      cterm=NONE      ctermbg=235  ctermfg=8    gui=NONE      guibg=#222324  guifg=#E6EEF5
highlight User2                      term=NONE      cterm=NONE      ctermbg=235  ctermfg=2    gui=NONE      guibg=#222324  guifg=#B8C2CC
highlight User3                      term=NONE      cterm=NONE      ctermbg=235  ctermfg=3    gui=NONE      guibg=#222324  guifg=Yellow
highlight VertSplit                  term=NONE      cterm=NONE      ctermbg=NONE ctermfg=16   gui=NONE      guibg=#000000  guifg=#000000
highlight Visual                     term=NONE      cterm=NONE      ctermbg=229  ctermfg=233  gui=NONE      guibg=#FFFFB6  guifg=#151616
highlight WarningMsg                 term=NONE      cterm=NONE      ctermbg=229  ctermfg=16   gui=NONE      guibg=#FFFFB6  guifg=#000000
highlight WildMenu                   term=NONE      cterm=NONE      ctermbg=155  ctermfg=233  gui=NONE      guibg=#C1F360  guifg=#151616
highlight WordsToAvoid               term=NONE      cterm=NONE      ctermbg=235  ctermfg=7    gui=NONE      guibg=#222324  guifg=#EEEEEE

highlight link Boolean               Constant
highlight link Character             Constant
highlight link Debug                 Special
highlight link Define                PreProc
highlight link Exception             Statement
highlight link Float                 Number
highlight link Include               PreProc
highlight link Label                 Statement
highlight link Macro                 PreProc
highlight link PreCondit             PreProc
highlight link Repeat                Statement
highlight link SpecialChar           Special
highlight link SpecialComment        Special
highlight link StorageClass          Type
highlight link Structure             Type
highlight link Tag                   Special
highlight link Typedef               Type

highlight link javaScriptNumber      Number
highlight link cssBraces             Normal
highlight link cssTagName            Keyword
highlight link StorageClass          Normal
highlight link cssClassName          Type
highlight link cssIdentifier         Identifier
highlight link cssColor              Constant
highlight link cssValueInteger       Number
highlight link cssValueNumber        Number
highlight link cssValueLength        Number
highlight link GitGutterAdd          String
highlight link GitGutterChange       Function
highlight link GitGutterDelete       Identifier
highlight link GitGutterChangeDelete Constant
highlight link htmlTag               Statement
highlight link htmlTagName           Keyword
highlight link htmlEndTag            Statement
highlight link htmlString            String
highlight link htmlBold              Conditional
highlight link htmlItalic            Operator
