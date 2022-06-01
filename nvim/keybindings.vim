"" NERDTree (SirVer/ultisnips)
set wildignore+=.DS_Store

let g:NERDTreeRespectWildIgnore = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeShowHidden = 1
let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git \) -prune -o -print'

map <C-n> :NERDTreeToggle<CR>

vnoremap <leader>y "*y

inoremap <silent><expr> <c-space> coc#refresh()
"------------------------------------------------------------
" CoC settings {{{1
"
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>
nmap <silent> :tso :CocCommand editor.action.organizeImport<CR>

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
nnoremap <silent> <C-p> :call FZFOpen(':Files')<CR>
