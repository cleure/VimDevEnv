" 18.vim -- Vim color scheme.
" Author: Cameron Eure
" Webpage: 
" Description: low-saturation, with emphasis on spring colors

hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "FloralGust"

if ($TERM =~ '256' || &t_Co >= 256) || has("gui_running")
    set background=dark

    hi Normal ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi NonText ctermbg=232 ctermfg=202 cterm=NONE guibg=#080808 guifg=#ff5f00 gui=NONE
    hi Comment ctermbg=232 ctermfg=31 cterm=NONE guibg=#080808 guifg=#0087af gui=NONE
    hi Constant ctermbg=232 ctermfg=79 cterm=NONE guibg=#080808 guifg=#5fd7af gui=NONE
    hi Error ctermbg=124 ctermfg=255 cterm=NONE guibg=#af0000 guifg=#eeeeee gui=NONE
    hi Identifier ctermbg=232 ctermfg=181 cterm=NONE guibg=#080808 guifg=#d7afaf gui=NONE
    hi Ignore ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi PreProc ctermbg=232 ctermfg=143 cterm=NONE guibg=#080808 guifg=#afaf5f gui=NONE
    hi Special ctermbg=232 ctermfg=79 cterm=NONE guibg=#080808 guifg=#5fd7af gui=NONE
    hi Statement ctermbg=232 ctermfg=79 cterm=NONE guibg=#080808 guifg=#5fd7af gui=NONE
    hi String ctermbg=232 ctermfg=229 cterm=NONE guibg=#080808 guifg=#ffffaf gui=NONE
    hi Number ctermbg=232 ctermfg=229 cterm=NONE guibg=#080808 guifg=#ffffaf gui=NONE
    hi Todo ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi Type ctermbg=232 ctermfg=192 cterm=NONE guibg=#080808 guifg=#d7ff87 gui=NONE
    hi Underlined ctermbg=232 ctermfg=255 cterm=underline guibg=#080808 guifg=#eeeeee gui=underline
    hi StatusLine ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi StatusLineNC ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi VertSplit ctermbg=232 ctermfg=24 cterm=NONE guibg=#080808 guifg=#005f87 gui=NONE
    hi TabLine ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi TabLineFill ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi TabLineSel ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi Title ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi CursorLine ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi LineNr ctermbg=232 ctermfg=24 cterm=NONE guibg=#080808 guifg=#005f87 gui=NONE
    hi CursorLineNr ctermbg=232 ctermfg=24 cterm=bold guibg=#080808 guifg=#005f87 gui=bold
    hi helpLeadBlank ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi helpNormal ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi Visual ctermbg=18 ctermfg=195 cterm=NONE guibg=#000087 guifg=#d7ffff gui=NONE
    hi VisualNOS ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi Pmenu ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi PmenuSbar ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi PmenuSel ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi PmenuThumb ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi FoldColumn ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi Folded ctermbg=232 ctermfg=79 cterm=NONE guibg=#080808 guifg=#5fd7af gui=NONE
    hi WildMenu ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi SpecialKey ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi DiffAdd ctermbg=23 ctermfg=255 cterm=NONE guibg=#005f5f guifg=#eeeeee gui=NONE
    hi DiffChange ctermbg=81 ctermfg=232 cterm=NONE guibg=#5fd7ff guifg=#080808 gui=NONE
    hi DiffDelete ctermbg=89 ctermfg=255 cterm=NONE guibg=#87005f guifg=#eeeeee gui=NONE
    hi DiffText ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi IncSearch ctermbg=24 ctermfg=255 cterm=NONE guibg=#005f87 guifg=#eeeeee gui=NONE
    hi Search ctermbg=24 ctermfg=255 cterm=NONE guibg=#005f87 guifg=#eeeeee gui=NONE
    hi Directory ctermbg=232 ctermfg=79 cterm=NONE guibg=#080808 guifg=#5fd7af gui=NONE
    hi MatchParen ctermbg=124 ctermfg=255 cterm=bold guibg=#af0000 guifg=#eeeeee gui=bold
    hi SpellBad ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi SpellCap ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi SpellLocal ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi SpellRare ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi ColorColumn ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi signColumn ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi ErrorMsg ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi ModeMsg ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi MoreMsg ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi Question ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi WarningMsg ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi Cursor ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    hi CursorColumn ctermbg=232 ctermfg=255 cterm=NONE guibg=#080808 guifg=#eeeeee gui=NONE
    
elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
    set t_Co=16
    set background=dark

   "hi NonText ctermbg=black ctermfg=green cterm=NONE
   "hi Comment ctermbg=black ctermfg=gray cterm=NONE
   "hi Constant ctermbg=black ctermfg=white cterm=NONE
   "hi Error ctermbg=black ctermfg=white cterm=NONE
   "hi Identifier ctermbg=black ctermfg=blue cterm=NONE
   "hi Ignore ctermbg=black ctermfg=white cterm=NONE
   "hi PreProc ctermbg=black ctermfg=white cterm=NONE
   "hi Special ctermbg=black ctermfg=blue cterm=NONE
   "hi Statement ctermbg=black ctermfg=blue cterm=NONE
   "hi String ctermbg=black ctermfg=red cterm=NONE
   "hi Number ctermbg=black ctermfg=red cterm=NONE
   "hi Todo ctermbg=black ctermfg=white cterm=underline
   "hi Type ctermbg=black ctermfg=red cterm=NONE
   "hi Underlined ctermbg=black ctermfg=white cterm=underline
   "hi StatusLine ctermbg=black ctermfg=white cterm=NONE
   "hi StatusLineNC ctermbg=black ctermfg=white cterm=NONE
   "hi VertSplit ctermbg=black ctermfg=white cterm=NONE
   "hi TabLine ctermbg=black ctermfg=white cterm=NONE
   "hi TabLineFill ctermbg=black ctermfg=white cterm=NONE
   "hi TabLineSel ctermbg=black ctermfg=white cterm=NONE
   "hi Title ctermbg=black ctermfg=white cterm=NONE
   "hi CursorLine ctermbg=black ctermfg=white cterm=NONE
   "hi LineNr ctermbg=darkgray ctermfg=white cterm=NONE
   "hi CursorLineNr ctermbg=black ctermfg=white cterm=NONE
   "hi helpLeadBlank ctermbg=black ctermfg=white cterm=NONE
   "hi helpNormal ctermbg=black ctermfg=white cterm=NONE
   "hi Visual ctermbg=darkcyan ctermfg=white cterm=NONE
   "hi VisualNOS ctermbg=black ctermfg=white cterm=NONE
   "hi Pmenu ctermbg=black ctermfg=white cterm=NONE
   "hi PmenuSbar ctermbg=black ctermfg=white cterm=NONE
   "hi PmenuSel ctermbg=black ctermfg=white cterm=NONE
   "hi PmenuThumb ctermbg=black ctermfg=white cterm=NONE
   "hi FoldColumn ctermbg=black ctermfg=white cterm=NONE
   "hi Folded ctermbg=black ctermfg=white cterm=NONE
   "hi WildMenu ctermbg=black ctermfg=white cterm=NONE
   "hi SpecialKey ctermbg=black ctermfg=white cterm=NONE
   "hi DiffAdd ctermbg=black ctermfg=white cterm=NONE
   "hi DiffChange ctermbg=black ctermfg=white cterm=NONE
   "hi DiffDelete ctermbg=black ctermfg=white cterm=NONE
   "hi DiffText ctermbg=black ctermfg=white cterm=NONE
   "hi IncSearch ctermbg=black ctermfg=white cterm=NONE
   "hi Search ctermbg=black ctermfg=white cterm=NONE
   "hi Directory ctermbg=black ctermfg=white cterm=NONE
   "hi MatchParen ctermbg=black ctermfg=white cterm=NONE
   "hi SpellBad ctermbg=black ctermfg=white cterm=NONE
   "hi SpellCap ctermbg=black ctermfg=white cterm=NONE
   "hi SpellLocal ctermbg=black ctermfg=white cterm=NONE
   "hi SpellRare ctermbg=black ctermfg=white cterm=NONE
   "hi ColorColumn ctermbg=black ctermfg=white cterm=NONE
   "hi signColumn ctermbg=black ctermfg=white cterm=NONE
   "hi ErrorMsg ctermbg=black ctermfg=white cterm=NONE
   "hi ModeMsg ctermbg=black ctermfg=white cterm=NONE
   "hi MoreMsg ctermbg=black ctermfg=white cterm=NONE
   "hi Question ctermbg=black ctermfg=white cterm=NONE
   "hi WarningMsg ctermbg=black ctermfg=white cterm=NONE
   "hi Cursor ctermbg=black ctermfg=white cterm=NONE
   "hi CursorColumn ctermbg=black ctermfg=white cterm=NONE
endif

