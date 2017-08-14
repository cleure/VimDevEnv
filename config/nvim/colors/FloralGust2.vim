" 18.vim -- Vim color scheme.
" Author: Cameron Eure
" Webpage: 
" Description: low-saturation, with emphasis on spring colors

hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "FloralGust"

set termguicolors
set background=dark

hi Normal guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi NonText guibg=#0F0F0A guifg=#FF4F56 gui=NONE ctermbg=0 ctermfg=0 cterm=NONE
hi Comment guibg=#0F0F0A guifg=#02A5DE gui=NONE ctermbg=0 ctermfg=0 cterm=NONE
hi Constant guibg=#0F0F0A guifg=#21C795 gui=NONE ctermbg=0 ctermfg=0 cterm=NONE
hi Error guibg=#FF4F56 guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi Identifier guibg=#0F0F0A guifg=#FFB3DE gui=NONE ctermbg=0 ctermfg=0 cterm=NONE
hi Ignore guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi PreProc guibg=#0F0F0A guifg=#ADA258 gui=NONE ctermbg=0 ctermfg=0 cterm=NONE
hi Special guibg=#0F0F0A guifg=#21C795 gui=NONE ctermbg=0 ctermfg=0 cterm=NONE
hi Statement guibg=#0F0F0A guifg=#21C795 gui=NONE ctermbg=0 ctermfg=0 cterm=NONE
hi String guibg=#0F0F0A guifg=#FCFCA8 gui=NONE ctermbg=0 ctermfg=0 cterm=NONE
hi Number guibg=#0F0F0A guifg=#FCFCA8 gui=NONE ctermbg=0 ctermfg=0 cterm=NONE
hi Todo guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi Type guibg=#0F0F0A guifg=#F7FF81 gui=NONE ctermbg=0 ctermfg=0 cterm=NONE
hi Underlined guibg=#0F0F0A guifg=#F1F8EF gui=underline ctermbg=0 ctermfg=2 cterm=underline
hi StatusLine guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi StatusLineNC guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi VertSplit guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi TabLine guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi TabLineFill guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi TabLineSel guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi Title guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi CursorLine guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi LineNr guibg=#0F0F0A guifg=#84C7C4 gui=NONE ctermbg=0 ctermfg=0 cterm=NONE
hi CursorLineNr guibg=#0F0F0A guifg=#84C7C4 gui=bold ctermbg=0 ctermfg=0 cterm=bold
hi helpLeadBlank guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi helpNormal guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi Visual guibg=#0C2C61 guifg=#C8DDF2 gui=NONE ctermbg=0 ctermfg=0 cterm=NONE
hi VisualNOS guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi Pmenu guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi PmenuSbar guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi PmenuSel guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi PmenuThumb guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi FoldColumn guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi Folded guibg=#0F0F0A guifg=#21C795 gui=NONE ctermbg=0 ctermfg=0 cterm=NONE
hi WildMenu guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi SpecialKey guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi DiffAdd guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi DiffChange guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi DiffDelete guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi DiffText guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi IncSearch guibg=#FCFCA8 guifg=#0F0F0A gui=NONE ctermbg=0 ctermfg=0 cterm=NONE
hi Search guibg=#FCFCA8 guifg=#0F0F0A gui=NONE ctermbg=0 ctermfg=0 cterm=NONE
hi Directory guibg=#0F0F0A guifg=#21C795 gui=NONE ctermbg=0 ctermfg=0 cterm=NONE
hi MatchParen guibg=#FF4F56 guifg=#F1F8EF gui=bold ctermbg=0 ctermfg=2 cterm=bold
hi SpellBad guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi SpellCap guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi SpellLocal guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi SpellRare guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi ColorColumn guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi signColumn guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi ErrorMsg guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi ModeMsg guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi MoreMsg guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi Question guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi WarningMsg guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi Cursor guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE
hi CursorColumn guibg=#0F0F0A guifg=#F1F8EF gui=NONE ctermbg=0 ctermfg=2 cterm=NONE


