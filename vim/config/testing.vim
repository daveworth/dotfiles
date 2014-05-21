" vim-rspec
map st :call RunCurrentSpecFile()<CR>
map sn :call RunNearestSpec()<CR>
map sl :call RunLastSpec()<CR>
map sa :call RunAllSpecs()<CR>
map sr :call Send_to_Tmux("./".@%."\n")<CR>
map sp :call Send_to_Tmux("vagrant provision\n")<CR>
map sd :call Send_to_Tmux("rspec --format documentation\n")<CR>
map sg :call Send_to_Tmux("go test\n")<CR>

" send testing commands via tslime
let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'
