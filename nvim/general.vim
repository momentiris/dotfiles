"" Always display sign column (where errors are displayed)
set signcolumn=yes

set tabstop=2
set shiftwidth=2
set autoindent
set expandtab
set smartindent
set noshowmode

" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

"" Theme and color settings
set termguicolors
set t_Co=256

let g:palenight_color_overrides = {
\    'black': { 'gui': '#1B1E28', "cterm": "0", "cterm16": "0" },
\}
colorscheme palenight
let g:lightline = { 'colorscheme': 'palenight' }

: lua require("scrollbar").setup()

"" Custom colors
hi CocCodeLens guifg=#40505E
hi CocInlayHint guifg=Gray
hi DiagnosticUnderlineError cterm=undercurl gui=underdash
hi DiagnosticUnderlineWarn cterm=underline gui=underdash guisp=Orange                                                                                                                                                                       
hi DiagnosticUnderlineInfo cterm=underline gui=underdash guisp=LightBlue                                                                                                                                                                    
hi DiagnosticUnderlineHint cterm=underline gui=underdash guisp=LightGrey 
