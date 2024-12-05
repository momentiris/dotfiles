call plug#begin('~/.vim/plugged')
  Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'itchyny/lightline.vim'
  Plug 'chrisbra/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'rescript-lang/vim-rescript'
  Plug 'amiralies/vim-reason'
  Plug 'github/copilot.vim'

  "" NERDTree - File explorer
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'

  "" Installs a bunch of languages
" Plug 'sheerun/vim-polyglot'

  " Themes
  Plug 'believer/night-owl'
  Plug 'drewtempelmeyer/palenight.vim'
  Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

  " Misc
  Plug 'Yggdroot/indentLine'
  Plug 'tpope/vim-surround' " Surround words something
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
  Plug 'github/copilot.vim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'CopilotC-Nvim/CopilotChat.nvim', { 'branch': 'main' }

  call plug#end()

lua << EOF
require("CopilotChat").setup {
  -- See Configuration section for options
}
EOF
