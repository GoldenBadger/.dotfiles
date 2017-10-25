" Plug initialization
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  augroup Plugins
    au!
    au VimEnter * PlugInstall | source "~/.vimrc"
  augroup END
endif
call plug#begin('~/.local/share/nvim')
  source ~/.dotfiles/vimrc.d/vim.plug
call plug#end()

if filereadable(expand("~/.vimrc_background"))
  set t_Co=256
  let base16colorspace=256
  source ~/.vimrc_background
endif

set encoding=utf-8
for f in split(glob('~/.dotfiles/vimrc.d/*.vim'), '\n')
  exe 'source' f
endfor

