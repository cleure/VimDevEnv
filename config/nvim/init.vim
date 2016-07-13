source ~/.nvimrc

call plug#begin('~/.config/nvim/plugged')
    " NERDTree kind of sucks, disable it
    "Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

    " CTRL-P, Fuzzy Finder
    Plug 'ctrlpvim/ctrlp.vim'

    " Better syntax highlighting
    Plug 'sheerun/vim-polyglot'

    " Per-project settings, defined in .lvimrc
    Plug 'embear/vim-localvimrc'

    " Linting
    Plug 'scrooloose/syntastic'

    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Themes
    Plug 'hhsnopek/vim-firewatch'
    Plug 'fcpg/vim-fahrenheit'
    Plug 'tomsik68/vim-crystallite'
    Plug 'lifepillar/vim-solarized8'
    Plug 'juanedi/predawn.vim'
    Plug 'owickstrom/vim-colors-paramount'
    Plug 'jacoborus/tender.vim'
    Plug 'limadm/vim-blues'
    Plug 'vim-scripts/sift'
    Plug 'tstelzer/welpe.vim'
    Plug 'pbrisbin/vim-colors-off'
    Plug 'vim-scripts/oceandeep'
    Plug 'bounceme/base.vim'
    Plug 'cesardeazevedo/Fx-ColorScheme'
    Plug 'scwood/vim-hybrid'
    Plug 'mhinz/vim-janah'
    Plug 'the31k/vim-colors-tayra'
    Plug 'michalbachowski/vim-wombat256mod'
call plug#end()

