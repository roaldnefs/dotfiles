
call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'airblade/vim-gitgutter'
call plug#end()

let mapleader = " "

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup GROUP
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

" Allow italic fonts. This might require additional configuration for the
" terminal and applications, see:
" https://alexpearce.me/2014/05/italics-in-iterm2-vim-tmux/
highlight Comment cterm=italic gui=italic
