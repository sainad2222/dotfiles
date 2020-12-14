set encoding=utf-8          " not needed for nvim but ...
" setting leader
let mapleader=","
let g:mapleader=","

" MISC
set updatetime=100          " default 4000ms results in poor user experience
set shortmess+=c            " don't show short messages like PATTERN NOT FOUND during searchs
set nu rnu                  " setting realtive numbers to lines
set tabstop=4               " sets tab to 4 spaces
set softtabstop=4           " inserts 4 spaces instead of 1 tab
set expandtab               " Use appropriate no of tabs acc to indentation
set shiftwidth=4            " useful in indentation
set noswapfile              " no swap files plz
set nobackup                " no backup files too
set mouse=a                 " use mouse in vim
set clipboard=unnamedplus   " use system clipboard not just regiesters(imp)
set shell=/usr/bin/zsh      " set zsh as shell
filetype on                 " to detect filetypes
filetype indent on          " indent based on filetype
syntax enable               " looks good highlights acc to syntax
set autoindent              " autoindent on 
set nowrap                  " don't wrap plz it's ugly
set hidden                  " When on a buffer becomes hidden when it is abandoned

call plug#begin('~/.vim/plugged')

" coc autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" better status bar
Plug 'vim-airline/vim-airline'

" Autocomplete bracket pairs
Plug 'jiangmiao/auto-pairs'

" Commenting and uncommenting
Plug 'scrooloose/nerdcommenter'

" Python indent (follows the PEP8 style)
Plug 'Vimjas/vim-python-pep8-indent', {'for': 'python'}

" Ultimate snippets solution(as they say)
Plug 'sirver/ultisnips'

" Auto formatting
Plug 'chiel92/vim-autoformat'

" vim sneak for fast motion
Plug 'justinmk/vim-sneak'

" one tab to rule them all
Plug 'ervandew/supertab'

" undo tree
Plug 'mbbill/undotree'

" fzf finally! yay
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" autopairs configs
au FileType python let b:AutoPairs = {}

" autosave configs
let g:auto_save        = 1
let g:auto_save_silent = 1
let g:auto_save_events = ["InsertLeave", "TextChanged", "FocusLost"]

" NERDcommenter configs
let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'

" sneak motion configs
let g:sneak#label = 1
map f <Plug>Sneak_s
map F <Plug>Sneak_S

" undotree configs
nnoremap U :UndotreeToggle<CR>

 
" keymappings
imap ii <esc>
nmap <leader>y ggVG"+y''
nnoremap d "_d
vnoremap d "_d
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>
nnoremap <C-l> :let @/=""<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
map<C-a> ggVG
map<C-c> "+y
map <space><space> gt
noremap <F3> :Autoformat<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Custom running py and cpp files for CP
if filereadable(expand('%:p:r'))
	autocmd filetype python map <F5> :w <CR>:!python3 % < %:p:r<CR>
	autocmd filetype cpp map <F5> :w <CR>:!g++ --std=c++17 % -o testtt && ./testtt < ~/edu/cp/test3<CR>:!rm -f testtt<CR>
	autocmd filetype python map <F6> :w <CR>:sp<CR>:term python3 %<CR>
	autocmd filetype cpp map <F6> :w <CR>:sp<CR>:term g++ --std=c++17 % -o testtt && ./testtt && rm -f testtt<CR>
else
	autocmd filetype python map <F6> :w <CR>:sp<CR>:term python3 %<CR>
	autocmd filetype cpp map <F6> :w <CR>:sp<CR>:term g++ --std=c++17 % -o testtt && ./testtt && rm -f testtt<CR>
endif
autocmd TermOpen * startinsert

" TODO this process is too slow you may consider some treesitter to do parsing faster
" autocmd filetype python inoremap <cr> <Esc>:AutoformatLine<CR>o
" autocmd filetype cpp inoremap <cr> <Esc>:AutoformatLine<CR>o

" Coc configs
" Trigger suggestions
inoremap <silent><expr> <c-space> coc#refresh()
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
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

" get rid of stupid next line commenting
au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Persistent undo and redo(!!!Very imp)
let s:undoDir = "/tmp/.undodir_" . $USER
if !isdirectory(s:undoDir)
    call mkdir(s:undoDir, "", 0700)
endif
let &undodir=s:undoDir
set undofile

