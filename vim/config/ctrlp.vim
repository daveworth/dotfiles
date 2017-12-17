let g:ctrlp_dotfiles              = 1
let g:ctrlp_match_window_bottom   = 0
let g:ctrlp_match_window_reversed = 0
"let g:ctrlp_user_command = 'find %s -type f'

let g:ctrlp_custom_ignore = {
  \ 'dir': '\v(build|build_dir|dist|pkg|.git|.bundle|tmp|spec/fixtures/vcr_cassettes|coverage|node_components|node_modules|bower_components|tmp|vendor|bundler)$',
  \ 'file': '\v\.(pyc|pyc)$',
  \ }
