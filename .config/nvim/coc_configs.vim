" Coc configs
" Trigger suggestions
inoremap <silent><expr> <c-space> coc#refresh()
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> ,p <Plug>(coc-format)
nmap <silent> ,S <Plug>(coc-rename)
" documentation
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

command! -nargs=0 Pretty :CocCommand prettier.formatFile


" explorer configs
nmap <C-b> :CocCommand explorer --toggle --position floating<CR>

augroup MyCocExplorer
  autocmd!
  autocmd VimEnter * sil! au! FileExplorer *
  autocmd BufEnter * let d = expand('%') | if isdirectory(d) | silent! bd | exe 'CocCommand explorer --position floating --open-action-strategy select ' . d | endif
augroup END

let g:coc_global_extensions = ['coc-explorer','coc-tsserver','coc-python','coc-snippets','coc-prettier','coc-clangd','coc-java']
let g:python3_host_prog="/usr/bin/python3"
