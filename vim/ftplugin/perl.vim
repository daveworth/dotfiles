"Default Indenting Behavior
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Toggle Indeting Behavior
nnoremap <S-F10> :call ToggleTabIndent()<CR>
function ToggleTabIndent()
  if &expandtab
    set tabstop=4
    set shiftwidth=4
    set softtabstop=4
    set expandtab!
  else
    set tabstop=2
    set shiftwidth=2
    set softtabstop=2
    set expandtab
  endif
endfunction

" Set Whitespace Display Defaults
set nolist listchars=tab:→\ ,trail:·

" Toggle Whitespace Display
nnoremap <S-F11> :set list!<CR>
