let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

set number relativenumber
syntax on

set shiftwidth=4
set tabstop=4
set expandtab
set smartindent

inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha
