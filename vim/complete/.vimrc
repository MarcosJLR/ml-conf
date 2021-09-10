call plug#begin('~/.vim/plugged')

Plug  'tpope/vim-surround' 
Plug  'jiangmiao/auto-pairs'
Plug  'airblade/vim-gitgutter'
Plug  'tpope/vim-fugitive'
Plug  'frazrepo/vim-rainbow'
Plug  'vim-airline/vim-airline'
Plug  'whatyouhide/vim-gotham'
Plug  'preservim/nerdtree'
Plug  'junegunn/fzf.vim'
Plug  'vim-syntastic/syntastic'
Plug  'jaredgorski/spacecamp'

call plug#end()

set number relativenumber
syntax on
colorscheme gotham
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab
set softtabstop=4
set clipboard=unnamedplus

imap jk <Esc>
imap kj <Esc>


nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :Files<CR>

nnoremap <leader>cmp :w <bar> !g++ -g -O2 -static -Wall -DLOCAL -std=gnu++17 % -o %:r <CR>
nnoremap <leader>c11 :w <bar> !g++ -g -O2 -static -Wall -DLOCAL -std=c++11 % -o %:r <CR>
nnoremap <leader>ri :!./%:r < in<CR>
nnoremap <leader>rc :!./%:r<CR>
nnoremap <leader>rr :!xsel -b > clipin && ./%:r < clipin <CR>

set showcmd

au FileType c,cpp,objc,objcpp call rainbow#load()
autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> %s/\s\+$//e

