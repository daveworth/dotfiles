" vim-rspec
map sd :call Send_to_Tmux("rspec --format documentation\n")<CR>

" send testing commands via tslime
let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'
