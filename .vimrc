set nocompatible

call plug#begin()

Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'

call plug#end()

autocmd vimenter * NERDTree
