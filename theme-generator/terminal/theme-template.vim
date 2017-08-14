" 18.vim -- Vim color scheme.
" Author: {{ author }}
" Webpage: {{ webpage }}
" Description: {{ description }}

hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "{{ name }}"

if ($TERM =~ '256' || &t_Co >= 256) || has("gui_running")
    set background={{ background }}

    {% for hl in highlights -%}
      hi {{ hl.name }} ctermbg={{ hl.ctermbg }} ctermfg={{ hl.ctermfg }} cterm={{ hl.style }} guibg={{ hl.guibg }} guifg={{ hl.guifg }} gui={{ hl.style }}
    {% endfor %}
elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
    set t_Co=16
    set background={{ background }}

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

