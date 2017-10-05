set nocompatible " required
filetype off "required
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle (required)
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'

Plugin 'nanotech/jellybeans.vim' 
Plugin 'sonph/onehalf', {'rtp': 'vim/'}
Plugin 'rakr/vim-two-firewatch'

Plugin 'scrooloose/nerdtree'

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
call vundle#end()

filetype plugin indent on

" colorscheme jellybeans 

colorscheme onehalflight 

"set background=dark " or light if you prefer the light version
"let g:two_firewatch_italics=1
"colo two-firewatch

set splitbelow
set splitright

set foldmethod=indent
set foldlevel=99
nnoremap <space> za

"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix

au BufNewFile,BufRead *.py set tabstop=4
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set shiftwidth=4
au BufNewFile,BufRead *.py set textwidth=79
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set autoindent
au BufNewFile,BufRead *.py set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

set encoding=utf-8

let python_highlight_all=1
syntax on

set number
set showcmd
set cursorline
set showmatch
set wildmenu

set incsearch	
set hlsearch

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

set clipboard=unnamed
