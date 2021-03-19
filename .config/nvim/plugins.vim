call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}             " coc autocompletion
Plug 'vim-airline/vim-airline'                              " better status bar
Plug 'jiangmiao/auto-pairs'                                 " Autocomplete bracket pairs
Plug 'scrooloose/nerdcommenter'                             " Commenting and uncommenting
Plug 'sirver/ultisnips'                                     " Ultimate snippets solution(as they say)
Plug 'chiel92/vim-autoformat'                               " Auto formatting
Plug 'justinmk/vim-sneak'                                   " vim sneak for fast motion
Plug 'ervandew/supertab'                                    " one tab to rule them all
Plug 'mbbill/undotree'                                      " undo tree
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }         " fzf finally! yay
Plug 'junegunn/fzf.vim'
Plug 'gruvbox-community/gruvbox'                            " colorscheme gruvbox
Plug 'dracula/vim'                                          " colorscheme dracula
Plug 'tpope/vim-fugitive'                                   " illegal git tool
Plug 'mattn/emmet-vim'                                      " emmet html completion
Plug 'ryanoasis/vim-devicons'                               " dev icons
Plug 'mhinz/vim-grepper'                                    " replacing all instances
Plug 'airblade/vim-gitgutter'                               " git status symbols in sidebar
Plug 'Yggdroot/indentLine'                                  " shows indentation with visual lines
Plug 'lambdalisue/suda.vim'                                 " sudo write non writable files
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } } " nvim in browser
Plug 'mlaursen/vim-react-snippets'                          " react snippet support
Plug 'kassio/neoterm'                                       " integrated terminal
Plug 'mxw/vim-jsx'                                          " jsx support for vim
call plug#end()
