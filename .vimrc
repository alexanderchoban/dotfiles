set nocompatible

call plug#begin()

Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'haishanh/night-owl.vim'

call plug#end()

""""" enable 24bit true color
if (has("termguicolors"))
 set termguicolors
endif

""""" enable the theme
syntax enable
colorscheme night-owl

""""" Auto turn on nerd tree
autocmd vimenter * NERDTree
