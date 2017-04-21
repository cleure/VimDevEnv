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

