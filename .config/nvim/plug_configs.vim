" autopairs configs
au FileType python let b:AutoPairs = {}
au FileType cpp let b:AutoPairs = {'{':'}'}
au FileType json let b:AutoPairs = {'{':'}'}

" autosave configs
let g:auto_save        = 1
let g:auto_save_silent = 1
let g:auto_save_events = ["InsertLeave", "TextChanged", "FocusLost"]

" NERDcommenter configs
let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'javascript.jsx': {'left': '{/*', 'right': '*/}' } }
" sneak motion configs
let g:sneak#label = 1
map f <Plug>Sneak_s
map F <Plug>Sneak_S

" supertab configs
let g:SuperTabContextDefaultCompletionType = "<c-n>"
let g:SuperTabDefaultCompletionType = "<c-n>"

" undotree configs
nnoremap U :UndotreeToggle<CR>

" gruvbox configs
colorscheme gruvbox8_hard
set background=dark

" netrw configs
let g:netrw_liststyle = 3       " netrw tree style
let g:netrw_banner = 0          " that top banner is useless
let g:netrw_browse_split = 3    " open new files in new tab
let g:netrw_winsize = 25        " take 25% width on :Vex

" emmet configs
let g:user_emmet_install_global = 0
autocmd FileType html,css,javascriptreact,javascript.jsx EmmetInstall
let g:user_emmet_leader_key=','

" fzf configs
let g:fzf_action = {'return': 'tab split'}

" vim-grepper configs
let g:grepper={}
let g:grepper.tools=["ag"]

" vim-gitgutter configs
" Use fontawesome icons as signs
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '>'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'

" indentLine configs
let g:indentLine_enabled = 1

" suda.vim configs
let g:suda_smart_edit = 1

" vim.jsx configs
let g:jsx_ext_required = 1

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}
EOF

" lualine configs
lua <<EOF
require('lualine').setup()
options = {theme = 'gruvbox'}
EOF
