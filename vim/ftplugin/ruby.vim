let g:test_command = "bundle exec rspec"

function! RunAllSpecs()
  VimuxRunCommand(g:test_command)
endfunction

function! RunCurrentSpecFile()
  let l:test_this_file_command = g:test_command . " " . @%
  VimuxRunCommand(l:test_this_file_command)
endfunction

function! RunCurrentSpecFileInDocMode()
  let l:test_this_file_command = g:test_command . " --format=documentation " . @%
  VimuxRunCommand(l:test_this_file_command)
endfunction

function! RunCurrentSpec()
  let l:test_this_file_command = g:test_command . " " . @% . ":" . line(".")
  VimuxRunCommand(l:test_this_file_command)
endfunction

function! RunCurrentSpecDirectory()
  let l:test_this_directory_command = g:test_command . " " . fnamemodift(@%, ":p:h")
  VimuxRunCommand(l:test_this_directory_command)
endfunction

map sa :call RunAllSpecs()<CR>
map st :call RunCurrentSpecFile()<CR>
map sd :call RunCurrentSpecFileInDocMode()<CR>
map sn :call RunCurrentSpec()<CR>
