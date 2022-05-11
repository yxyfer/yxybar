" SETTING UP THE STATUS LINE
hi DiffAdd ctermbg=176 ctermfg=black
hi DiffChange ctermbg=yellow ctermfg=black
hi DiffDelete ctermbg=darkblue ctermfg=black
" hi Cursor ctermbg=176 ctermfg=black
hi File ctermbg=240 ctermfg=176
set laststatus=2

set statusline=
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DIffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
"set statusline+=\ %n\           " buffer number


set statusline+=%#Visual#               " colour
set statusline+=%{StatuslineGit()}

set statusline+=%#Visual#       " colour
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}

set statusline+=%#Visual#               " colour
set statusline+=>\ %f\ 

" Right
set statusline+=%#CursorLine#   " colour
set statusline+=%=                          " right align
set statusline+=%#CursorLine#   " colour

"set statusline+=%#TrailingSpace#
set statusline+=%#Cusor#%{StatuslineTrailingSpaceWarning()}
"set statusline+=%*

set statusline+=%#CursorLine#%r
"set statusline+=%r                        " readonly flag
set statusline+=%#Purple#%m                         " modified [+] flag

" Line Type
set statusline+=%#Purple#%y\ 

set statusline+=%#Visual#     " colour
set statusline+=%3l:%-2c\          " line + column
set statusline+=%#Cursor#       " colour
set statusline+=\ %3p%%\                " percentage

set statusline +=\ %{LinterStatus()}
