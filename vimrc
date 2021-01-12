set nu
set relativenumber
set scrolloff=8
set colorcolumn=80
set nowrap
set tabstop=2 softtabstop=2
set expandtab
set smartindent
set incsearch

call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'preservim/nerdtree'
Plug 'gosukiwi/vim-atom-dark'
call plug#end()

colorscheme gruvbox
