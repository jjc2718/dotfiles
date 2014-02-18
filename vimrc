"
" Jake's vimrc
"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Installation stuff
set nocompatible
filetype off

let vundle_autoinstall = 0
let vundle_readme = expand('~/.vim/bundle/vundle/README.md')

if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let vundle_autoinstall = 1
endif

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

"Vundle bundles (lol)
Bundle 'gmarik/vundle'
Bundle 'corntrace/bufexplorer'
Bundle 'itchyny/lightline.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'justinmk/vim-sneak'
Bundle 'taglist.vim'

"Colors
Bundle 'ciaranm/inkpot'
Bundle 'djjcast/mirodark'
Bundle 'flazz/vim-colorschemes'

"Lightline settings
set laststatus=2
let g:lightline = {
    \ 'colorscheme': 'wombat',
    \}

filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Syntax highlighting on by default
syntax on 

"Show current command being typed
set showcmd

"Show current position
set ruler

"Line numbers on by default
set number

"Indentation settings - 2 spaces, no real tabs
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

"Highlight searches
set hlsearch 
set incsearch

"Case insensitive search unless capital letters are present
set ignorecase
set smartcase

" Use Unix as default encoding, makes it pass the Wayfair PEAR standards
set ffs=unix,dos,mac

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color Scheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Let terminal use colors
set t_Co=256

"Use 256-color version of twilight color scheme 
colorscheme twilight256

" Try
" set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized

