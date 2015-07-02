" Vundle settings
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'ervandew/supertab'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'jmcantrell/vim-virtualenv'

call vundle#end()
filetype plugin indent on
" End of Vundle settings

syntax on
autocmd vimenter * NERDTree

" Kill vim if the only window left is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Trim trailing whitespace in Python files
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

" Display all buffers when only 1 tab is open
let g:airline#extensions#tabline#enabled = 1

" Cycle through buffers
:nnoremap <C-n> :bnext<CR>
:nnoremap <C-p> :bprevious<CR>

" Disable syntastic for Python
let g:syntastic_mode_map = { 'passive_filetypes': ['python'] }
