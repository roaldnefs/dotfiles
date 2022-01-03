" Search down into suddirectories. This also provides tab-completion for all
" file-related tasks.
set path+=**

" Display all matching files when we tab complete.
set wildmenu
set wildmode=list:full

set wildignore+=.git,.svn       " Version control
set wildignore+=.DS_Store       " OSX
set wildignore+=*.pyc           " Python

set guicursor=

set relativenumber
set number

set nohlsearch

set hidden

set noerrorbells

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set nowrap

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set incsearch

set termguicolors

set scrolloff=8

set colorcolumn=80
set signcolumn=yes

" Time in milliseconds to write buffer to swapfile, this is also used by
" plugins such as airblade/vim-gitgutter to update the git gutter. The
" default value is 4000.
set updatetime=100
