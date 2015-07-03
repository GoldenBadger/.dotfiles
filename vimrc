" Vundle settings
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'nvie/vim-flake8'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'vim-scripts/a.vim'

call vundle#end()
filetype plugin indent on
" End of Vundle settings

" Default indentation settings where no language-specific settings exist.
set textwidth=80
set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4
set shiftround
set autoindent
set showcmd
set colorcolumn=+1
set number

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

" Easymotion enhanced search
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
