let g:gitgutter_override_sign_column_highlight = 1

if exists('&signcolumn')  " Vim 7.4.2201
  set signcolumn=yes
else
  let g:gitgutter_sign_column_always = 1
endif

highlight GitGutterAdd    ctermfg=green
highlight GitGutterChange ctermfg=yellow
highlight GitGutterDelete ctermfg=darkred
highlight link GitGutterChangeLine DiffText

let g:gitgutter_async = 0
