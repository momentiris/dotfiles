let mapleader = " "

"" NERDTree (SirVer/ultisnips)
set wildignore+=.DS_Store

let g:NERDTreeRespectWildIgnore = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeShowHidden = 1
:let g:NERDTreeWinSize = 40
let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git \) -prune -o -print'

map <C-n> :NERDTreeToggle<CR>
noremap <leader>y "*y

map <leader>r :NERDTreeFind<cr>

"------------------------------------------------------------
" CoC settings {{{1
"
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> ga <Plug>(coc-codeaction-line)
nmap <silent> <leader>j <Plug>(coc-diagnostic-next-error)
nmap <silent> <leader>k <Plug>(coc-diagnostic-next)
" trigger coc documentation for function, type etc
nnoremap <silent> K :call <SID>show_documentation()<CR>

nmap <silent> :tso :CocCommand editor.action.organizeImport<CR>

" trigger coc suggestions in insert mode with ctrl + space
inoremap <silent><expr> <c-space> coc#refresh()

" map enter key to apply coc suggestion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

:"" Fzf
nmap ; :Files<CR>
nmap cc :Commands<CR>
nmap ?? :Rg!<CR>

function! FZFOpen(command_str)
  if (expand('%') =~# 'NERD_tree' && winnr('$') > 1)
    exe "normal! \<c-w>\<c-w>"
  endif
  exe 'normal! ' . a:command_str . "\<cr>"
endfunction

nnoremap <silent> <C-b> :call FZFOpen(':Buffers')<CR>
nnoremap <silent> <C-g>g :call FZFOpen(':Ag')<CR>
nnoremap <silent> <C-g>c :call FZFOpen(':Commands')<CR>
nnoremap <silent> <C-g>l :call FZFOpen(':BLines')<CR>

" close buffers and accept current
command BufOnly silent! execute “%bd|e#|bd#”
nnoremap <leader>b :BufOnly<CR>
