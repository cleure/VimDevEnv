syntax on

" Case-insensitive search
set ic

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

" Don't forget history when switching between buffers
set hidden

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
"let g:airline_theme= 'badwolf'
"let g:airline_theme= 'cool'

" https://github.com/vim-airline/vim-airline-themes/tree/master/autoload/airline/themes

"firewatch
"janah
"fahrenheit
"oceandeep
"predawn
"ran
"hybrid
"sift
"slate
"wombat256mod
"zellner
colo fahrenheit

