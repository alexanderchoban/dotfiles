set nocompatible

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

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
" autocmd vimenter * NERDTree
