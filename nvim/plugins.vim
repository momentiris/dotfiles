call plug#begin('~/.vim/plugged')
  Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'itchyny/lightline.vim'

  " NERDTree - File explorer
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'

  "" Installs a bunch of languages
  Plug 'sheerun/vim-polyglot'
  Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}

  " Themes
  Plug 'believer/night-owl'

  " Misc
  Plug 'Yggdroot/indentLine'
  Plug 'tpope/vim-surround' " Surround words something
  call plug#end()
