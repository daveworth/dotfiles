set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smarttab

let g:test_command = 'py.test'

function! RunCurrentTestFile()
  let l:test_this_file_command = g:test_command . " -s " . @%
  VimuxRunCommand(l:test_this_file_command)
endfunction

map sa :call VimuxRunCommand(g:test_command)
map st :call RunCurrentTestFile()<CR>
map sn :call RunCurrentTestFile()<CR>
