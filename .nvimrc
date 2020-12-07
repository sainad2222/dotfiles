set encoding=utf-8
let mapleader=","
let g:mapleader=","
set clipboard=unnamedplus
filetype on
filetype indent on
syntax enable
 
call plug#begin('~/.vim/plugged')

" deoplete for autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

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

call plug#end()

" deoplete configurations
let g:deoplete#enable_at_startup = 1

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
 
" keymappings
imap ii <esc>
nmap <leader>y ggVG"+y''
noremap <F3> :Autoformat<CR>
nnoremap d "_d
vnoremap d "_d
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>
nnoremap <C-l> :let @/=""<CR>

if filereadable(expand('%:p:r'))
	autocmd vimEnter *.py map <F5> :w <CR>:!python3 % < %:p:r<CR>
	autocmd vimEnter *.cpp map <F5> :w <CR>:!g++ --std=c++17 % -o testtt && ./testtt < ~/edu/cp/test3<CR>:!rm -f testtt<CR>
else
	autocmd vimEnter *.py map <F5> :w <CR>:!python3 % < ~/edu/cp/test<CR>
	autocmd vimEnter *.cpp map <F5> :w <CR>:!g++ --std=c++17 % -o testtt && ./testtt < ~/edu/cp/test3<CR>:!rm -f testtt<CR>
endif

map<C-a> ggVG
map<C-c> "+y
map<C-v> dpggdd
map <space><space> gt

" MISC
set number
set tabstop=4
set shiftwidth=4
set mouse=a
set autoindent
" get rid of stupid next line commenting
au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Persistent undo and redo(Very imp)
let s:undoDir = "/tmp/.undodir_" . $USER
if !isdirectory(s:undoDir)
    call mkdir(s:undoDir, "", 0700)
endif
let &undodir=s:undoDir
set undofile
