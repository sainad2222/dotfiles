call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}             " coc autocompletion
Plug 'hoob3rt/lualine.nvim'                                 " status bar
Plug 'jiangmiao/auto-pairs'                                 " Autocomplete bracket pairs
Plug 'scrooloose/nerdcommenter'                             " Commenting and uncommenting
Plug 'sirver/ultisnips'                                     " Ultimate snippets solution(as they say)
Plug 'chiel92/vim-autoformat'                               " Auto formatting
Plug 'justinmk/vim-sneak'                                   " vim sneak for fast motion
Plug 'ervandew/supertab'                                    " one tab to rule them all
Plug 'mbbill/undotree'                                      " undo tree
Plug 'lifepillar/vim-gruvbox8'                                  " colorscheme gruvbox
Plug 'dracula/vim'                                          " colorscheme dracula
Plug 'tpope/vim-fugitive'                                   " illegal git tool
Plug 'mattn/emmet-vim'                                      " emmet html completion
Plug 'ryanoasis/vim-devicons'                               " dev icons
Plug 'airblade/vim-gitgutter'                               " git status symbols in sidebar
Plug 'Yggdroot/indentLine'                                  " shows indentation with visual lines
Plug 'mlaursen/vim-react-snippets'                          " react snippet support
Plug 'kassio/neoterm'                                       " integrated terminal
Plug 'mxw/vim-jsx'                                          " jsx support for vim
Plug 'tweekmonster/startuptime.vim'                         " Plugin for startup time benchmarking
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Treesitter mainly for syntax highlighting

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

call plug#end()
