set noexpandtab
set nolist

let g:go_doc_keywordprg_enabled = 0
nnoremap <buffer> <silent> ? :GoDoc<CR>

let g:test_command = "go test"
map st :call VimuxRunCommand(g:test_command)<CR>
map sa :call VimuxRunCommand(g:test_command)<CR>
map sn :call VimuxRunCommand(g:test_command)<CR>
