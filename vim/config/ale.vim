" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'
" You can disable this option too
" if you don't want linters to run on opening a file
"let g:ale_lint_on_enter = 0

"let g:ale_linters = {
"\   'go': ['go build'],
"\}

" Fix JavaScript code with ESlint
let g:ale_fixers = {}
let g:ale_fixers.javascript = ['eslint']
