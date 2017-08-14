" 18.vim -- Vim color scheme.
" Author: {{ author }}
" Webpage: {{ webpage }}
" Description: {{ description }}

hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "{{ name }}"

set termguicolors
set background={{ background }}

{% for hl in highlights -%}
  hi {{ hl.name }} guibg={{ hl.guibg }} guifg={{ hl.guifg }} gui={{ hl.style }} ctermbg={{ hl.ctermbg }} ctermfg={{ hl.ctermfg }} cterm={{ hl.style }}
{% endfor %}

