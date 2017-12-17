set noexpandtab
set nolist

"au FileType go nmap <Leader>dv <Plug>(go-def-vertical)

let g:go_bin_path='/Users/dworth/.vim-go'

let g:go_doc_keywordprg_enabled = 0
"nnoremap <buffer> <silent> ? :GoDoc<CR>

"let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_go_checkers = ['golint', 'govet', 'gometalinter']
let g:syntastic_go_gometalinter_args = ['--disable-all', '--enable=errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
"let g:go_list_type = "quickfix"
let g:go_alternate_mode = "vsplit"



nmap st <Plug>(go-test)
nmap sn <Plug>(go-test-func)
"map st :call GoTest()<CR>
"map sn :call GoTestFunc()<CR>
"map sa :call GolangTestCurrentPackage()<CR>
"map sa :call VimuxRunCommand(g:test_command)<CR>
nmap <Leader>t <Plug>(go-coverage-toggle)

