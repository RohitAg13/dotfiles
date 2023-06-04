set nocompatible              " required
set clipboard=unnamedplus
filetype off                  " required
set backspace=indent,eol,start

set foldmethod=indent
set foldlevel=99

set foldcolumn=3
set mouse=a

" set line number and relatice number
set nu rnu

" set hightlight search and incremental search
set incsearch
set hlsearch

" Setup tags to be able to jump around
set tags=~/.tags

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1

"Autocomplete
Plugin 'davidhalter/jedi-vim'
let g:jedi#auto_initialization = 1
let g:jedi#auto_vim_configuration = 1
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#popup_on_dot = 1
let g:jedi#popup_select_first = 1
let g:jedi#completions_enabled = 1

"autocomplete
"Plugin 'Valloric/YouCompleteMe'
"let g:ycm_autoclose_preview_window_after_completion=1

"custom keys
"let mapleader=" "
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


Plugin 'jeetsukumaran/vim-indentwise'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'

Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

" Vim Surrounding
Plugin 'tpope/vim-surround'

" Vim Black formatter
Plugin 'psf/black'

" Vim NerdTree
Plugin 'scrooloose/nerdtree'

" Fuzzy file finder
Plugin 'ctrlpvim/ctrlp.vim'

" Powerline
Plugin 'lokaltog/vim-powerline'

let python_highlight_all=1
syntax on

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=119 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.cpp set tabstop=2 softtabstop=2 shiftwidth=2 textwidth=119 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.c set tabstop=2 softtabstop=2 shiftwidth=2 textwidth=119 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.h set tabstop=2 softtabstop=2 shiftwidth=2 textwidth=119 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.hpp set tabstop=2 softtabstop=2 shiftwidth=2 textwidth=119 expandtab autoindent fileformat=unix
setlocal foldmethod=expr

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding with the spacebar
nnoremap <space> za

" TAGS
function Tags()
  ! ctags -R -f .tags; if [ -e .gitignore ] ; then echo ".tags" >> .gitignore ; fi ;
endfunction

