set encoding=utf-8
let mapleader=","
let g:mapleader=","

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

if filereadable(expand('%:p:r'))
	autocmd vimEnter *.py map <F5> :w <CR>:!python3 % < %:p:r<CR>
	autocmd vimEnter *.cpp map <F5> :w <CR>:!g++ --std=c++17 % -o testtt && ./testtt < ~/edu/cp/test3<CR>:!rm -f testtt<CR>
	autocmd vimEnter *.py map <F6> :w <CR>:sp<CR>:term python3 %<CR>
	autocmd vimEnter *.cpp map <F6> :w <CR>:sp<CR>:term g++ --std=c++17 % -o testtt && ./testtt && rm -f testtt<CR>
else
	autocmd vimEnter *.py map <F6> :w <CR>:sp<CR>:term python3 %<CR>
	autocmd vimEnter *.cpp map <F6> :w <CR>:sp<CR>:term g++ --std=c++17 % -o testtt && ./testtt && rm -f testtt<CR>
endif
autocmd TermOpen * startinsert

" MISC
set nu rnu
set tabstop=4
set softtabstop=4
set expandtab
set noswapfile
set nobackup
set shiftwidth=4
set mouse=a
set clipboard=unnamedplus
set shell=/usr/bin/zsh
filetype on
filetype indent on
syntax enable
set autoindent
set nowrap

" coc configs (extra ref gihub for explainations)
set hidden

autocmd filetype python inoremap <cr> <Esc>:AutoformatLine<CR>o
autocmd filetype cpp inoremap <cr> <Esc>:AutoformatLine<CR>o

inoremap <silent><expr> <c-space> coc#refresh()
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)

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

