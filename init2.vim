call plug#begin('~/.vim/test')
Plug 'vim-airline/vim-airline'
Plug 'ervandew/supertab'
Plug 'gruvbox-community/gruvbox'
Plug 'lifepillar/vim-gruvbox8'
Plug 'tweekmonster/startuptime.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
" Plug 'nvim-treesitter/nvim-treesitter'
Plug 'sirver/ultisnips'                                     
call plug#end()
let mapleader=","
let g:mapleader=","

set termguicolors
colorscheme gruvbox8_hard
set background=dark

set nu rnu
set tabstop=4               " sets tab to 4 spaces
set softtabstop=4           " inserts 4 spaces instead of 1 tab
set expandtab               " Use appropriate no of tabs acc to indentation
set shiftwidth=4            " useful in indentation
set splitbelow              " split below not above
set noswapfile              " no swap files plz
set nobackup                " no backup files too
set mouse=a                 " use mouse in vim
set clipboard=unnamedplus   " use system clipboard not just regiesters(imp)
filetype on                 " to detect filetypes
filetype indent on          " indent based on filetype
syntax enable               " looks good highlights acc to syntax
set autoindent              " autoindent on 
set nowrap                  " don't wrap plz it's ugly
set hidden                  " When on a buffer becomes hidden when it is abandoned
set formatoptions-=cro      " get rid of stupid next line commenting
let s:undoDir = "/tmp/.undodir_" . $USER
if !isdirectory(s:undoDir)
    call mkdir(s:undoDir, "", 0700)
endif
let &undodir=s:undoDir
set undofile

imap ii <esc>
nmap <leader>y ggVG"+y''`.
nnoremap d "_d
vnoremap d "_d
nnoremap c "_c
nnoremap s "_s
vnoremap s "_s
nnoremap S "_S
vnoremap S "_S
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>
nnoremap <leader>l :let @/=""<CR>

vnoremap < <gv
vnoremap > >gv
nnoremap H gT
nnoremap L gt
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
set cot=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
let g:completion_enable_snippet = 'UltiSnips'

let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'

let g:gruvbox_plugin_hi_groups = 1
lua << EOF
require'lspconfig'.pyright.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.clangd.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
EOF

let g:SuperTabContextDefaultCompletionType = "<c-n>"
let g:SuperTabDefaultCompletionType = "<c-n>"

" LSP config (the mappings used in the default file don't quite work right)
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
