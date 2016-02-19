" Vundle settings
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'nvie/vim-flake8'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'rhysd/vim-clang-format'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'bling/vim-airline'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'vim-scripts/a.vim'
Plugin 'fatih/vim-go'
Plugin 'vim-scripts/HTML-AutoCloseTag'

call vundle#end()
filetype plugin indent on
" End of Vundle settings

" Default indentation settings where no language-specific settings exist.
set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4
set shiftround
set autoindent
set showcmd
set number

syntax on
autocmd vimenter * NERDTree

" Kill vim if the only window left is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Take focus away from NERDTree on startup
autocmd VimEnter * wincmd l

" Trim trailing whitespace in Python files
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

" Nicer <Esc>
:inoremap jj <Esc>

" Better <Leader>
let mapleader = ","

" Display all buffers when only 1 tab is open
let g:airline#extensions#tabline#enabled = 1

" Cycle through buffers
set hidden
:nnoremap <C-n> :bnext<CR>
:nnoremap <C-p> :bprevious<CR>

" Easymotion enhanced search
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" Powerline fonts
let g:airline_powerline_fonts = 1

" Associate *.inc with C++
autocmd BufRead,BufNewFile *.inc set filetype=cpp

nmap <Leader>C :ClangFormatAutoToggle<CR>
