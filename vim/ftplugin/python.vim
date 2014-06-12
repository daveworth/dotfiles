set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smarttab

function! RunAllSpecs()
  let l:spec = ""
  call SetLastSpecCommand(l:spec)
  call RunSpecs(l:spec)
endfunction

" TODO - replace RunNearestSpec for PyTest

function! InSpecFile()
  return match(expand("%"), "_test.py$") != -1 || match(expand("%"), "^test_.*.py$") != -1
endfunction

let g:rspec_command = 'call Send_to_Tmux("py.test {spec}\n")'
