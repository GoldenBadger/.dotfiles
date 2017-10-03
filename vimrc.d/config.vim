let base16colorspace=256

colorscheme base16-mocha

filetype plugin indent on

set autoindent
set expandtab
set hidden
set number
set shiftround
set shiftwidth=4
set showcmd
set softtabstop=4
set tabstop=4

" Cycle through buffers
:nnoremap <C-n> :bnext<CR>
:nnoremap <C-p> :bprevious<CR>

" Rust options
let g:rustfmt_autosave = 1

" Easymotion enhanced search
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

let g:EasyMotion_smartcase = 1

" NERDTree Toggle
:nnoremap <C-l> :NERDTreeToggle<CR>

" Different ESC
:inoremap jj <Esc>

" Different leader
:let mapleader = ','

set mouse=""

syntax enable
