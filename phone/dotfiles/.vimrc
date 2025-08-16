set nocompatible

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin()

Plug 'dracula/vim'

call plug#end()

"""""""""""""""""""""""""""""""""""""
" Mappings configurationn
"""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>

""""" enable 24bit true color
if (has("termguicolors"))
 set termguicolors
endif

""""" enable the theme
syntax enable
colorscheme dracula

""""" Airline Config
let g:airline_powerline_fonts = 1
let g:airline_theme='light'

set number
set encoding=utf-8
set wildmenu
set showmatch

"""" Tab Settings
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2

set autoindent
set smartindent
