"
" Jake's vimrc
"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Installation stuff
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

" Vundle bundles
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'corntrace/bufexplorer'
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'

" Colors
Bundle 'ciaranm/inkpot'
Bundle 'flazz/vim-colorschemes'

" Lightline settings
Bundle 'itchyny/lightline.vim'
set laststatus=2
let g:lightline = {
    \ 'colorscheme': 'wombat',
    \}

" Vdebug settings
filetype plugin indent on
Bundle 'joonty/vdebug.git'
let g:vdebug_options = {
    \ "port" : 9001,
    \ "break_on_open" : 0,
    \ "watch_window_style" : 'compact',
    \}

" Ctrl-P settings
let g:ctrlp_clear_cache_on_exit=0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Syntax highlighting on by default
syntax on

" Disable bell
set noerrorbells visualbell t_vb=

" Show current command being typed
set showcmd

" Show current position
set ruler

" Line numbers on by default
set number

" Indentation settings - 4 spaces, no real tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set backspace=indent,eol,start

" Highlight searches
set hlsearch
set incsearch

" Case insensitive search unless capital letters are present
set ignorecase
set smartcase

" Make filename tab completion more like terminal
set wildmode=longest:full
set wildmenu

" Use Unix as default encoding, makes it pass the Wayfair PEAR standards
set ffs=unix,dos,mac

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color Scheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Let terminal use colors
set t_Co=256

" Use kellys color scheme
colorscheme kellys

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Quickly remove search highlights
:map <F2> :nohl<CR>

" Enter adds a line in normal mode
:nnoremap <CR> o<Esc>

" Toggle NERDTree with \n
:map <leader>n :NERDTreeToggle<CR>

" Toggle vimrc with \v
:map <leader>v :vs ~/.vimrc<CR><C-W>_

" Fold paragraph to 80-column lines with \f in visual mode
:vmap <leader>f !fold --spaces --width=80<CR>:FixWhitespace<CR>:nohl<CR>

" Unfold paragraph by removing new lines with \u in visual mode
:vmap <leader>u !paste -s --delimiters=" "<CR>

" Space removes highlighting
:map <space> :nohl<CR>

" \w removes trailing whitespace
:map <leader>w :set expandtab<CR>:retab<CR>:FixWhitespace<CR>:nohl<CR>

" map backtick to escape
":imap ` <Esc>

" Search for current selection using //
:vnoremap // y/<C-R>"<CR>
