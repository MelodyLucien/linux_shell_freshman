set number
"set tab width is 4 char
set ts=4
"set autointent as 4 spaces
set sw=4
"replace tab with space of width is set by ts when editing
set et
"allow auto indent
set autoindent
"backspace to delete tab
set smarttab
set list
"show the last location when we open
    autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") |
            \ exe "normal! g'\"" |
                \ endif
"show file name and path
let &titlestring = expand("%:p")
if &term == "screen"
  set t_ts=^[k
  set t_fs=^[\
endif

if &term == "screen" || &term == "xterm"
set title
endif