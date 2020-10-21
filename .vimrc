" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim
" Key mapping for escape key
imap ii <esc>
" To run python files copied from stackoverflow
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
"Colorscheme
set background=dark
colorscheme solarized 
syntax enable " Enable syntax processing
"Configuring tabs and spaces
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
"Configuring line numbers
set number
set showcmd " Show commands in bottom bar
set cursorline " highlight current line
filetype plugin indent on      " load filetype-specific indent files
set wildmenu " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
let mapleader=","       " leader is comma
let g:mapleader=","
execute pathogen#infect()
call pathogen#helptags()
set clipboard=unnamedplus
nmap <leader>y ggVG"+y''
let g:fauxClip_always_use = 1
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settinglis in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => pazams opinionated- ‘d is for delete’ & ‘ leader-d is for cut’ (shared clipboard register mode)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" if you are using the yankring plugin, there could be some conflicts.
" to make the most of these suggested mappings,
" make sure to delete any keys mapped below from the following line at yankring.vim 
" (i.e. delete 'x' and 'D'):
" let g:yankring_n_keys = 'Y D x X'

nnoremap x "_x
nnoremap X "_X
nnoremap d "_d
nnoremap D "_D
vnoremap d "_d

if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
  nnoremap <leader>d "+d
  nnoremap <leader>D "+D
  vnoremap <leader>d "+d
else
  set clipboard=unnamed
  nnoremap <leader>d "*d
  nnoremap <leader>D "*D
  vnoremap <leader>d "*d
endif
