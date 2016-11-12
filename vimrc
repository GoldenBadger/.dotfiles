" Vundle settings
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'rhysd/vim-clang-format'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'bling/vim-airline'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'vim-scripts/a.vim'
Plugin 'fatih/vim-go'
Plugin 'vim-scripts/HTML-AutoCloseTag'
Plugin 'rust-lang/rust.vim'
Plugin 'klen/python-mode'

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

let g:EasyMotion_smartcase = 1

" Powerline fonts
let g:airline_powerline_fonts = 1

" Associate *.inc with C++
autocmd BufRead,BufNewFile *.inc set filetype=cpp

nmap <Leader>C :ClangFormatAutoToggle<CR>

" Toggle file associations between C and C++
function ToggleC()
    if &filetype == "c"
        set filetype=cpp
    elseif &filetype == "cpp"
        set filetype=c
    endif
endfunction

nmap <Leader>cp :call ToggleC()<CR>

" Rust auto-formatting
let g:rustfmt_autosave = 1

" Rust extra autocompletion
let g:ycm_rust_src_path = '/usr/local/rust/rustc-1.12.1/src'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Python virtualenv autocompletion
let g:ycm_python_binary_path = 'python'

" Disable python-mode's syntax checking because syntastic is better
let g:pymode_lint = 0
let g:pymode_lint_on_write = 0
