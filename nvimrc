syntax on

" Case-insensitive search
set ic

" Persistent highlight on search terms
set hlsearch

" Show numbers, relative to current line
set number
set relativenumber
set ruler
set showmode
set showmatch

" Use 4 spaces for tabs
set tabstop=4
set shiftwidth=4
set expandtab

" Incremental Search
set incsearch

" Unmap ESC (use CTRL-C for ESC)
noremap <ESC> <NOP>
inoremap <ESC> <NOP>

" Allow JSX highlighting without .jsx extension
let g:jsx_ext_required = 0

" Don't forget history when switching between buffers
set hidden

" Show 5 lines above/below when scrolling
set scrolloff=5

" Use the system clipboard as the default
set clipboard=unnamed

" Set leader
let mapleader="\\"

" Buffer-switching
nmap <Leader>[ :bp<CR>
nmap <Leader>] :bn<CR>
" Close buffer with Leader w
nmap <Leader>w :bd<CR>
" Open :Explore with Leader n
nmap <Leader>n :Explore<CR>

" Comment out blocks in visual-block mode (CTRL-V, \)
map <Leader>\ :'<,'>norm i//<CR>

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list                " Show problematic characters.

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/

" Syntastic: Use eslint instead of jshint
let g:syntastic_javascript_checkers = ['eslint']

" Syntastic: Set passive mode for java
let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "active_filetypes": [],
    \ "passive_filetypes": ["java"] }

" Remember last view-mode in :Explore (toggle view-style with i)
let g:netrw_liststyle=3

" Airline config
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'

" CTRL-P: Ignored directories
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|target'

" Colorscheme
set background=dark
"colo peachpuff
"colo off
"colo pablo
"colo nova
"colo jellyx
"colo FloralGust
colo FloralGust2
"colo OceanicNext
"colo CandyPaper
"colo antares
"colo asu1dark
"colo badwolf
"colo Tomorrow-Night-Bright
"colo dzo
"colo ecostation
"colo elflord
"colo torte
"colo sorcerer
"colo darkblue
"colo zellner
"colo distill
"colo lizard
"colo janah

" Rotational
"colo sift
"colo fahrenheit

