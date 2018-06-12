call plug#begin()
    " CTRL-P, Fuzzy Finder
    Plug 'ctrlpvim/ctrlp.vim'

    " Better syntax highlighting
    Plug 'sheerun/vim-polyglot'

    " Per-project settings, defined in .lvimrc
    Plug 'embear/vim-localvimrc'

    " JSX Highlighting
    Plug 'mxw/vim-jsx'

    " Linting
    Plug 'scrooloose/syntastic'

    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Text Alignment
    "Plug 'junegunn/vim-easy-align'
    Plug 'godlygeek/tabular'

    " Themes
    Plug 'hhsnopek/vim-firewatch'
    Plug 'fcpg/vim-fahrenheit'
    Plug 'owickstrom/vim-colors-paramount'
    Plug 'limadm/vim-blues'
    Plug 'vim-scripts/sift'
    Plug 'pbrisbin/vim-colors-off'
    Plug 'vim-scripts/oceandeep'
    Plug 'bounceme/base.vim'
    Plug 'mhinz/vim-janah'
    Plug 'xero/blaquemagick.vim'
    Plug 'sherifkandeel/vim-colors'
    Plug 'whatyouhide/vim-gotham'
    Plug 'cseelus/vim-colors-lucid'
    Plug 'morhetz/gruvbox'

    Plug 'zanglg/nova.vim'
    Plug 'encody/nvim'
    Plug 'dikiaap/minimalist'
    Plug 'zaki/zazen'
    Plug 'bruth/vim-newsprint-theme'
    Plug 'juanpabloaj/vim-pixelmuerto'
    Plug 'jansenfuller/crayon'
    Plug 'acoustichero/goldenrod.vim'
    Plug 'Blevs/vim-dzo'
    Plug 'dunckr/vim-monokai-soda'
    Plug 'tyrannicaltoucan/vim-quantum'
    Plug 'euclio/vim-nocturne'

    Plug 'guns/jellyx.vim'
    Plug 'adlawson/vim-sorcerer'
    Plug 'gilsondev/lizard'
    Plug 'vim-scripts/ecostation'
    Plug 'vim-scripts/0x7A69_dark.vim'
    Plug 'vim-scripts/SlateDark'
    Plug 'vim-scripts/NERV-ous'
    Plug 'changyuheng/color-scheme-holokai-for-vim'
    Plug 'chriskempson/vim-tomorrow-theme'

    Plug 'flazz/vim-colorschemes'

    "Plug 'jacoborus/tender.vim'
    "Plug 'lifepillar/vim-solarized8'
    "Plug 'juanedi/predawn.vim'
    "Plug 'tstelzer/welpe.vim'
    "Plug 'cesardeazevedo/Fx-ColorScheme'
    "Plug 'scwood/vim-hybrid'
    "Plug 'the31k/vim-colors-tayra'
    "Plug 'michalbachowski/vim-wombat256mod'
    "Plug 'mbbill/vim-seattle'
    "Plug 'roosta/vim-srcery'
    "Plug 'snowcrshd/cyberpunk.vim'
    "Plug 'bounceme/highwayman'
call plug#end()

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
" Disabled, as this breaks arrow keys for me on OSX
"noremap <ESC> <NOP>
"inoremap <ESC> <NOP>

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

" Use eslint instead of jshint
let g:syntastic_javascript_checkers = ['eslint']

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

" Colorscheme
set background=dark
"colo peachpuff
"colo off
"colo pablo
"colo nova
"colo jellyx
colo FloralGust
"colo FloralGust2
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

