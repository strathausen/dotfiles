" set colorscheme to desert
colorscheme desert
" Highlight active line
set cursorline
" highlighting the current line
hi CursorLine guibg=gray10
" Change higlighting colour of the 80 characters line on the right
hi ColorColumn guibg=gray24
" Darken the normal background colour a bit
hi Normal guibg=gray14
" Source gvimrc files after editing
autocmd bufwritepost .gvimrc source <afile>

" Maximize window (works on windows)
"au GUIEnter * call Maximize_Window()

"function Maximize_Window()
  "silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
"endfunction

" don't have line numbers in inactive windows
"augroup BgHighlight
  "autocmd!
  "autocmd WinEnter * set number
  "autocmd WinLeave * set nonumber
  "highlight ActiveWindow guibg=lightblue
  "autocmd WinEnter * call matchadd('ActiveWindow', '.*', 10, 1682)
  "autocmd WinLeave * call matchdelete(1682)
"augroup END
