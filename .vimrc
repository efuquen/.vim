call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'derekwyatt/vim-scala'
Plug 'derekwyatt/vim-sbt'

call plug#end()

let g:syntastic_python_checkers = ['python', 'pylint']
let g:syntastic_javascript_checkers = ['jscs']

set expandtab
set softtabstop=2
set shiftwidth=2

" autocmd Filetype javascript setlocal ts=4 sts=4 sw=4

set hlsearch
set incsearch
set autoindent

"set term=xterm
set mouse=a

set colorcolumn=80
set number

set ignorecase
set smartcase
set showcmd

set list

set foldmethod=syntax
set foldcolumn=1

autocmd vimenter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (
 \ winnr("$") == 1 && 
 \ exists("b:NERDTreeType") && 
 \ b:NERDTreeType == "primary"
 \ ) | q | endif
autocmd vimenter * wincmd l
autocmd bufnew * wincmd l
let NERDTreeWinSize=30

nmap <F8> :TagbarToggle<CR>

set wildignore+=*.class,.git,.svn

set statusline+=col:\ %c,

let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](project|target)$'
  \ }

au BufNewFile,BufRead SCons* set filetype=scons

autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
