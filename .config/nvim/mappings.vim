imap ii <esc>

nmap <leader>y ggVG"+y
nnoremap d "_d
vnoremap d "_d
nnoremap c "_c
nnoremap s "_s
vnoremap s "_s
nnoremap S "_S
vnoremap S "_S
vnoremap <leader>p p
vnoremap p "_dP
nnoremap<C-a> ggVG
map<C-c> "+y
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap cn *``cgn
nnoremap cN *``cgN

nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>
nnoremap <leader>l :let @/=""<CR>
nnoremap <leader>f :Telescope find_files<CR>
nnoremap <leader>gb :Telescope live_grep<CR>
nnoremap <leader>gf :Telescope current_buffer_fuzzy_find sorting_strategy=ascending<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap < <gv
vnoremap > >gv

map <S-right> gt
map <S-left> gT
nnoremap H gT
nnoremap L gt
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-l> :wincmd l<CR>

noremap <F3> :Autoformat<CR>
inoremap <F5> <esc>
inoremap <F6> <esc>
inoremap <F12> <esc>

tnoremap ii <C-\><C-n>

autocmd filetype python,cpp nnoremap <F5> :w <CR>:sp<CR>:term cf test %<CR>
autocmd filetype python,cpp nnoremap <F12> :term cf submit -f %
autocmd filetype python nnoremap <F6> :w <CR>:sp<CR>:term python3 %<CR>
autocmd filetype cpp nnoremap <F6> :w <CR>:sp<CR>:term g++ --std=c++17 % -o testtt && ./testtt && rm -f testtt<CR>
autocmd filetype java nnoremap <F6> :w <CR>:sp<CR>:term java %<CR>
autocmd filetype c nnoremap <F6> :w <CR>:sp<CR>:term gcc % && ./a.out<CR>
autocmd filetype rust nnoremap <F6> :w<CR>:sp<CR>:term rustc % -o testtt && ./testtt && rm -f testtt<CR>
autocmd filetype go nnoremap <F6> :w<CR>:sp<CR>:term go run %<CR>
autocmd filetype sh nnoremap <F6> :w<CR>:sp<CR>:term ./%<CR>

autocmd vimenter test.py nnoremap <F5> :w <CR>:sp<CR>:term python3 % < test<CR>
autocmd vimenter test.py nnoremap <F6> :w <CR>:sp<CR>:term python3 %<CR>
autocmd vimenter test.py nnoremap <F7> :w <CR>:sp<CR>:term python3 % < test > testttt.txt && diff testttt.txt out
autocmd vimenter test2.py nnoremap <F5> :w <CR>:sp<CR>:term python3 % < test2<CR>
autocmd vimenter test2.py nnoremap <F6> :w <CR>:sp<CR>:term python3 %<CR>
autocmd vimenter test.cpp nnoremap <F5> :w <CR>:sp<CR>:term g++ --std=c++17 % -o testtt && ./testtt < test3 && rm -f testtt<CR>
autocmd vimenter test.cpp nnoremap <F6> :w <CR>:sp<CR>:term g++ --std=c++17 % -o testtt && ./testtt && rm -f testtt<CR>
autocmd vimenter Main.java nnoremap <F5> :w <CR>:sp<CR>:term java % < test5<CR>
autocmd vimenter *.m nnoremap <F6> :w <CR>:sp<CR>:term octave %<CR>

if has('nvim')
    autocmd TermOpen * startinsert
endif

" Toggle transparency
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
autocmd vimenter * hi SignColumn guibg=NONE ctermbg=NONE
highlight Normal ctermbg=NONE guibg=NONE
let g:is_transparent = 1
function! Toggle_transparent()
    if g:is_transparent == 0
        highlight Normal ctermbg=NONE guibg=NONE
        highlight SignColumn ctermbg=NONE guibg=NONE
        let g:is_transparent = 1
    else
        set background=dark
        let g:is_transparent = 0
    endif
endfunction
autocmd vimenter * call Toggle_transparent()
nnoremap <silent> <C-t> :call Toggle_transparent()<CR>

xmap gr <plug>(GrepperOperator)
" After searching for text, press this mapping to do a project wide find and
" replace. It's similar to <leader>r except this one applies to all matches
" across all files instead of just the current file.
nnoremap <Leader>S
  \ :let @s='\<'.expand('<cword>').'\>'<CR>
  \ :Grepper -cword -noprompt<CR>
  \ :cfdo %s/<C-r>s//g \| update
  \<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

" The same as above except it works with a visual selection.
xmap <Leader>S
    \ "sy
    \ gvgr
    \ :cfdo %s/<C-r>s//g \| update
     \<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

