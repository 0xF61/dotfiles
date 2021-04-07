""
"" Vim color scheme
"" Maintainer: Joseph Yu
"" Last Change: 2015 10 19
""

hi clear

let color_name = "malokai"

set t_Co=256
set background=dark

if exists("syntax_on")
  syntax reset
endif

" terminal colors
let term_text_color = "253"
let term_bg_color = "233"
let term_hl_color = "234"
let term_strong_hl_color = "235"
let term_diff_delete = "27"
let term_fold_color = "250"
let term_dark_bg_color = "232"
let term_warning_text_color = "214"
let term_light_text_color = "246"
let term_popup_bg_color = "236"
let term_popup_sel_color = "239"
let term_popup_thumb_color = "242"
let term_tab_bg_fill = "232"
let term_tab_bg = "235"
let term_tab_select = "237"
let term_select_bg = "130"
let term_directory = "33"
let term_separator = "77"
let term_match_paren = "227"
let term_non_text = "99"
let term_special = "161"
" gui color
let gui_text_color = "#F0F0F0"
let gui_bg_color = "#0A0A0A"
let gui_hl_color = "#121212"
let gui_strong_hl_color = "#161616"
let gui_diff_delete = "#5882FA"
let gui_fold_color = "#BDBDBD"
let gui_dark_bg_color = "#060606"
let gui_warning_text_color = "#ED9F0D"
let gui_light_text_color = "#666666"
let gui_popup_bg_color = "#202020"
let gui_popup_sel_color = "#363636"
let gui_popup_thumb_color = "#565656"
let gui_tab_bg_fill = "#090909"
let gui_tab_bg = "#0C0C0C"
let gui_tab_select = "#0E0E0E"
let gui_select_bg = "#EB981D"
let gui_directory = "#4F4DE9"
let gui_separator = "#58D539"
let gui_match_paren = "#F7AA03"
let gui_non_text = "#8100EB"
let gui_special = "#FF3535"

" normal & cursor {{{
execute "hi Normal        cterm=none ctermfg=".term_text_color." ctermbg=".term_bg_color." gui=none guifg=".gui_text_color." guibg=".gui_bg_color
execute "hi Cursor        cterm=reverse gui=none guifg=".gui_bg_color." guibg=".gui_text_color
execute "hi CursorIM      cterm=reverse gui=none guifg=".gui_bg_color." guibg=".gui_text_color
execute "hi CursorColumn  cterm=none ctermfg=none ctermbg=".term_hl_color." gui=none guibg=".gui_hl_color
execute "hi CursorLine    cterm=none ctermfg=none ctermbg=".term_hl_color." gui=none guibg=".gui_hl_color
" }}}
" diff {{{
execute "hi DiffAdd     cterm=bold ctermbg=none ctermfg=none gui=bold"
execute "hi DiffChange  cterm=bold ctermbg=none ctermfg=none gui=bold"
execute "hi	DiffDelete	cterm=bold ctermbg=none ctermfg=".term_diff_delete." gui=bold guifg=".gui_diff_delete
execute "hi	DiffText	cterm=bold ctermbg=none ctermfg=".term_diff_delete." gui=bold guifg=".gui_diff_delete
" }}}
" fold {{{
execute "hi Folded        cterm=none ctermbg=none  ctermfg=".term_fold_color." gui=none guifg=".gui_fold_color
execute "hi FoldedColumn  cterm=none ctermbg=none  ctermfg=".term_fold_color." gui=none guifg=".gui_fold_color
" }}}
" search {{{
execute "hi	Search		cterm=none  ctermfg=none ctermbg=".term_dark_bg_color." gui=none guibg=".gui_dark_bg_color
execute "hi	IncSearch	cterm=bold	ctermfg=none ctermbg=".term_dark_bg_color." gui=bold guibg=".gui_dark_bg_color
" }}}
" line number {{{
execute "hi	LineNr		  cterm=none  ctermfg=".term_light_text_color." ctermbg=".term_hl_color." gui=none	guifg=".gui_light_text_color." guibg=".gui_hl_color
execute "hi	CursorLineNr  cterm=bold  ctermfg=".term_text_color." ctermbg=".term_strong_hl_color." gui=bold	guifg=".gui_text_color." guibg=".gui_strong_hl_color
" }}}
" message {{{
execute "hi	ErrorMsg	cterm=bold	ctermfg=".term_warning_text_color." ctermbg=none  gui=bold  guifg=".gui_warning_text_color
execute "hi	MoreMsg		cterm=bold	ctermfg=".term_text_color."	ctermbg=none gui=bold guifg=".gui_text_color
execute "hi	WarningMsg	cterm=bold	ctermfg=".term_text_color." ctermbg=none gui=bold guifg=".gui_text_color
execute "hi	Question	cterm=bold  ctermfg=".term_text_color." ctermbg=none gui=bold guifg=".gui_text_color
" }}}
" popup menu {{{
execute "hi	Pmenu		cterm=bold	ctermfg=".term_text_color." ctermbg=".term_popup_bg_color." gui=bold guifg="gui_text_color." guibg=".gui_popup_bg_color
execute "hi	PmenuSel	cterm=bold	ctermfg=".term_text_color."	ctermbg=".term_popup_sel_color." gui=bold guifg=".gui_text_color." guibg=".gui_popup_sel_color
execute "hi	PmenuSbar	cterm=none  ctermfg=".term_hl_color." ctermbg=".term_hl_color."	gui=none guifg=".gui_hl_color." guibg=".gui_hl_color
execute "hi	PmenuThumb	cterm=none  ctermfg=".term_popup_thumb_color." ctermbg=".term_popup_thumb_color." gui=none guifg=".gui_popup_thumb_color." guibg=".gui_popup_thumb_color
" }}}
" Tabs {{{
execute "hi	TabLine		cterm=bold ctermfg=".term_text_color." ctermbg=".term_tab_bg." gui=bold guifg=".gui_text_color." guibg=".gui_tab_bg
execute "hi	TabLineFill	cterm=none ctermfg=".term_tab_bg_fill." ctermbg=".term_tab_bg_fill." gui=none guifg=".gui_tab_bg_fill." guibg=".gui_tab_bg_fill
execute "hi	TabLineSel	cterm=underline,bold  ctermfg=".term_text_color." ctermbg=".term_tab_select." gui=underline,bold guifg=".gui_text_color." guibg=".gui_tab_select
" }}}
" visual {{{
execute "hi	Visual		cterm=bold ctermfg=".term_text_color." ctermbg=".term_select_bg." gui=bold guifg=".gui_text_color." guibg=".gui_select_bg
execute "hi	VisualNOS	cterm=bold ctermfg=".term_text_color." ctermbg=".term_select_bg." gui=bold guifg=".gui_text_color." guibg=".gui_select_bg
" }}}
" other {{{
execute "hi	SignColumn	cterm=bold ctermfg=".term_text_color." ctermbg=none gui=bold guifg=".gui_text_color
execute "hi	Directory	cterm=bold ctermfg=".term_directory." ctermbg=none gui=bold	guifg=".gui_directory
execute "hi	VertSplit	cterm=bold ctermfg=16 ctermbg=".term_separator." gui=bold guifg=#000000 guibg=".gui_separator
execute "hi	MatchParen	cterm=bold ctermfg=".term_match_paren." ctermbg=".term_strong_hl_color." gui=bold guifg=".gui_match_paren." guibg=".gui_strong_hl_color
execute "hi	NonText		cterm=bold ctermfg=".term_non_text." ctermbg=none gui=bold guifg=".gui_non_text
execute "hi	SpecialKey	cterm=none ctermfg=".term_special." ctermbg=none gui=none guifg=".gui_special
execute "hi	WildMenu	cterm=bold ctermfg=none ctermbg=".term_dark_bg_color." gui=bold guibg=".gui_dark_bg_color
" }}}
" gui highlight {{{
execute "hi	Menu		gui=bold guifg=".gui_text_color." guibg=".gui_bg_color
execute "hi	scrollbars	gui=bold guifg=".gui_strong_hl_color." guibg=".gui_dark_bg_color
execute "hi	Tooltip		gui=bold guifg=".gui_text_color." guibg=".gui_hl_color
" }}}

let term_constant_color = "99"
let term_construct_color = "161"
let term_comment_color = "243"
let term_error_color = "160"
let term_function_color = "113"
let term_type_color = "45"
let term_string_color = "227"

let gui_constant_color = "#C55BD0"
let gui_construct_color = "#FF3466"
let gui_comment_color = "#535353"
let gui_error_color = "#F70000"
let gui_function_color = "#00FF9E"
let gui_type_color = "#38ECFF"
let gui_string_color = "#FFF641"

""	general syntax highlighting {{{
execute "hi Boolean		cterm=bold ctermfg=".term_constant_color." gui=bold guifg=".gui_constant_color
execute "hi Character	cterm=none ctermfg=".term_constant_color." gui=none guifg=".gui_constant_color
execute "hi Comment		cterm=none ctermfg=".term_comment_color." gui=none guifg=".gui_comment_color
execute "hi Conditional	cterm=bold ctermfg=".term_construct_color." gui=bold guifg=".gui_construct_color
execute "hi Constant	cterm=bold ctermfg=".term_constant_color." gui=bold guifg=".gui_constant_color
execute "hi Debug		cterm=bold ctermfg=".term_construct_color." gui=bold guifg=".gui_construct_color
execute "hi Define		cterm=bold ctermfg=".term_construct_color." gui=bold guifg=".gui_construct_color
execute "hi Delimiter	cterm=none ctermfg=".term_text_color." gui=bold	guifg=".gui_text_color
execute "hi Error		cterm=bold ctermfg=".term_text_color." ctermbg=".term_error_color." gui=bold guifg=".gui_text_color." guibg=".gui_error_color
execute "hi Exception	cterm=bold ctermfg=".term_construct_color." gui=bold guifg=".gui_construct_color
execute "hi Float		cterm=none ctermfg=".term_constant_color." gui=bold guifg=".gui_constant_color
execute "hi Function	cterm=bold ctermfg=".term_function_color." gui=bold guifg=".gui_function_color
execute "hi Identifier	cterm=none ctermfg=".term_text_color." gui=bold guifg=".gui_text_color
execute "hi Ignore		cterm=bold ctermfg=".term_error_color." gui=bold guifg=".gui_error_color
execute "hi Include		cterm=bold ctermfg=".term_string_color." gui=bold guifg=".gui_string_color
execute "hi Keyword		cterm=bold ctermfg=".term_construct_color." gui=bold guifg=".gui_construct_color
execute "hi Label		cterm=bold ctermfg=".term_construct_color."	gui=bold guifg=".gui_construct_color
execute "hi Macro		cterm=bold ctermfg=".term_type_color." gui=bold guifg=".gui_type_color
execute "hi Number		cterm=none ctermfg=".term_constant_color." gui=bold guifg=".gui_constant_color
execute "hi Operator	cterm=bold ctermfg=".term_construct_color." gui=bold guifg=".gui_construct_color
execute "hi PreCondit	cterm=bold ctermfg=".term_construct_color." gui=bold guifg=".gui_construct_color
execute "hi PreProc		cterm=bold ctermfg=".term_construct_color." gui=bold guifg=".gui_construct_color
execute "hi Repeat		cterm=bold ctermfg=".term_construct_color." gui=bold guifg=".gui_construct_color
execute "hi Special		    cterm=bold ctermfg=".term_constant_color." gui=bold guifg=".gui_constant_color
execute "hi SpecialChar	    cterm=bold ctermfg=".term_constant_color." gui=bold guifg=".gui_constant_color
execute "hi SpecialComment  cterm=bold ctermfg=".term_construct_color." gui=bold guifg=".gui_construct_color
execute "hi Statement	    cterm=bold ctermfg=".term_construct_color." gui=bold guifg=".gui_construct_color
execute "hi StorageClass	cterm=bold ctermfg=".term_construct_color." gui=bold guifg=".gui_construct_color
execute "hi String		cterm=none ctermfg=".term_string_color." gui=none guifg=".gui_string_color
execute "hi Structure	cterm=bold ctermfg=".term_construct_color." gui=bold guifg=".gui_construct_color
execute "hi Tag			cterm=bold ctermfg=".term_construct_color." gui=bold guifg=".gui_construct_color
execute "hi Title		cterm=bold ctermfg=".term_text_color." gui=bold guifg=".gui_text_color
execute "hi Todo		cterm=bold ctermfg=".term_construct_color." ctermbg=".term_warning_text_color." gui=bold guifg=".gui_construct_color." guibg=".gui_warning_text_color
execute "hi Type		cterm=bold ctermfg=".term_type_color." gui=bold guifg=".gui_type_color
execute "hi Typedef		cterm=bold ctermfg=".term_construct_color." gui=bold guifg=".gui_construct_color
execute "hi Underlined	cterm=underline,bold ctermfg=".term_warning_text_color." gui=underline,bold guifg=".gui_warning_text_color
execute "hi SpellBad    cterm=bold ctermfg=".term_construct_color." ctermbg=".term_warning_text_color." gui=bold guifg=".gui_construct_color." guibg=".gui_warning_text_color
" }}}

"" enable C syntax highlight {{{
let c_gnu = 1
let c_comment_strings = 1
let c_space_errors = 1
let c_curly_error = 1
let c_ansi_typedefs = 1
let c_ansi_constants = 1
let c_syntax_for_h = 1
" }}}
"" enable Java syntax highlight {{{
let java_highlight_java_lang_ids=1
let java_highlight_functions="style"
let java_allow_cpp_keywords = 0
let java_minlines = 1024
" }}}
"" enable Python syntax highlight {{{
let python_highlight_all = 1
" }}}

" support for code_color plugin {{{
exe "hi Variable      cterm=none ctermfg=".term_text_color." ctermbg=none gui=none guifg=".gui_text_color
exe "hi Member        cterm=none ctermfg=".term_function_color." ctermbg=none gui=none guifg=".gui_function_color
exe "hi Namespace     cterm=bold ctermfg=208 ctermbg=none gui=none guifg=#F5B624"
exe "hi EnumConstant  cterm=bold ctermfg=".term_constant_color." ctermbg=none gui=bold guifg=".gui_constant_color
" }}}
