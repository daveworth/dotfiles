let g:syntastic_enable_signs=1
"let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open = 1
let g:syntastic_auto_jump = 0

let g:syntastic_javascript_checkers = ['jshint']

let g:syntastic_html_tidy_ignore_errors = [
  \  "plain text isn't allowed in <head> elements",
  \  '<base> escaping malformed URI reference',
  \  'discarding unexpected <body>',
  \  '<script> escaping malformed URI reference',
  \  "</head> isn't allowed in <body> elements"
  \ ]
