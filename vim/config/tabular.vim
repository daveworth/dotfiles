if !exists(':Tabularize')
  finish
endif

" Align ruby symbol hashes on the hash marker
AddTabularPattern! rbshash /\s\?\w\+:[^:]/l0l0
AddTabularPattern! rbhash /^[^=]*\zs=>

" Mappings for ruby hash rocket and symbol hashes
nnoremap <silent> <Leader>ahr :Tabularize rbhash<CR>
vnoremap <silent> <Leader>ahr :Tabularize rbhash<CR>
nnoremap <silent> <Leader>ahs  :Tabularize rbshash<CR>
vnoremap <silent> <Leader>ahs  :Tabularize rbshash<CR>
