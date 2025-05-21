set noreadonly

" color
set t_Co=256
colorscheme elflord

" synxtax and view
syntax on
set ts=2
set shiftwidth=2
set cursorline
set showmatch
set ruler
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list
set colorcolumn=50,72,80,100,120

" input
set expandtab tabstop=2 shiftwidth=2

" python
let python_highlight_all = 1

" vimdiff
if &diff
  colorscheme murphy
  set nocursorline
endif

" ctags
set tags+=.tags

