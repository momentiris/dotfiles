"" NERDTree (SirVer/ultisnips)
set wildignore+=.DS_Store

let g:NERDTreeRespectWildIgnore = 1
let g:NERDTreeAutoDeleteBuffer = 1

map <C-n> :NERDTreeToggle<CR>

vnoremap <leader>y "*y

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
