imap ii <esc>

nnoremap d "_d
vnoremap d "_d
nnoremap c "_c
nnoremap s "_s
vnoremap s "_s
nnoremap S "_S
vnoremap S "_S

nnoremap H gT
nnoremap L gt
vnoremap J editor.action.moveLinesDownAction
vnoremap K editor.action.moveLinesUpAction

vnoremap > editor.action.indentLines
vnoremap < editor.action.outdentLines

nnoremap <leader>c editor.action.commentLine
vnoremap <leader>c editor.action.commentLine
