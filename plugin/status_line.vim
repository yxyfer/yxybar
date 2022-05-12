" SETTING UP THE STATUS LINE
hi File       ctermfg=176 ctermbg=240

set laststatus=2

set statusline=
set statusline+=%#Cursor#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DIffAdd#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='R')?'\ \ RPLACE\ ':''}
set statusline+=%#DiffChange#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=%#DiffText#%{(mode()=='c')?'\ \ COMMAND\ ':''}
"set statusline+=\ %n\           " buffer number


set statusline+=%#Visual#       " colour
set statusline+=%{GitInfo()}

set statusline+=%#Visual#       " colour
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}

set statusline+=%#Visual#               " colour

function! GetFile()
    return '  - 📝 ' . expand('%:p:h:t') . '/' . expand('%:t') . ' '
endfun
set statusline+=%{GetFile()}

" Right
set statusline+=%#CursorLine#   " colour
set statusline+=%=              " right align
set statusline+=%#CursorLine#   " colour

"set statusline+=%#TrailingSpace#
" set statusline+=%#Cusor#%{StatuslineTrailingSpaceWarning()}
"set statusline+=%*


" set statusline+=%#CursorLine#%r
"set statusline+=%r             " readonly flag
set statusline+=%#Purple#%m\    " modified [+] flag
set statusline+=%#Purple#%y\    " file type [vim...]
set statusline+=%#Visual#               " colour

set statusline+=%{LinterStatus()}
" set statusline+=%3l:%-2c\    " line + column

set statusline+=%#Cursor#   " colour
set statusline +=\ %{LinterStatus()}
