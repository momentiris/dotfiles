call plug#begin('~/.vim/plugged')
  Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " NERDTree - File explorer
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'

  "" Installs a bunch of languages
  Plug 'sheerun/vim-polyglot'

  " Themes
  Plug 'believer/night-owl'
call plug#end()
