let g:haddock_browser = "open"
let g:haddock_browser_callformat = "%s %s"

au BufEnter *.hs compiler ghc

au FileType haskell nnoremap <buffer> <LocalLeader>t :HdevtoolsType<CR>
"au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
"au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>
"au FileType haskell nnoremap <buffer> <silent> <F3> :HdevtoolsInfo<CR>
