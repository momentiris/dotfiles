"" Always display sign column (where errors are displayed)
set signcolumn=yes

set tabstop=2
set shiftwidth=2
set autoindent
set expandtab
set smartindent

" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" TODO: Load plugins here (pathogen or vundle)

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

"" Theme and color settings
set termguicolors
set background=dark
set t_Co=256

colorscheme night-owl

"" Custom highlighting
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

"" Custom colors
hi CocCodeLens guifg=#40505E
