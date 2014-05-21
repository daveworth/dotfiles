if has("gui_running")
  if has("gui_macvim")
    set fuoptions=maxvert,maxhorz 
    set guifont=Monaco:h11 
    set guioptions-=T " remove toolbar
    set guioptions-=r " remove scrollbars
    set guioptions-=L
    set stal=2        " always show tabline
    set noballooneval " fix macvim bug that shows ri --help output XXX

    map <D-w> :tabclose<CR>
    map <D-t> :tabnew<CR>
  end

  set anti

  " Default size of window
  set columns=140 
  set lines=50
endif
