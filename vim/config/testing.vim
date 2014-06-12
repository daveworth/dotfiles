" vim-rspec
map st :call RunCurrentSpecFile()<CR>
map sn :call RunNearestSpec()<CR>
map sl :call RunLastSpec()<CR>
map sa :call RunAllSpecs()<CR>
" just run the current file pretending it's a test
map sr :call Send_to_Tmux("./".@%."\n")<CR>
" kinda nice for working on devOpsy things
"map sp :call Send_to_Tmux("vagrant provision\n")<CR>

" send testing commands via tslime
"let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'
