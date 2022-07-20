colorscheme molokai

set termguicolors
set background=dark
set t_Co=256
"hi Normal guibg=NONE ctermbg=NONE

if exists('+colorcolumn')
    set colorcolumn=80
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)
endif

