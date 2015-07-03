" Vundle settings
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/syntastic'
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

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_checkers = ['cppcheck', 'gcc']
