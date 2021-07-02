set number relativenumber
syntax on
colorscheme default
set tabstop=4
set autoindent
set expandtab
set softtabstop=4
set clipboard=unnamedplus

imap jk <Esc>
imap kj <Esc>

inoremap {          {}<Left>
inoremap {<CR>      {<CR>}<Esc>O
inoremap <expr> }   strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"

inoremap (          ()<Left>
inoremap <expr> )   strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

inoremap [          []<Left>
inoremap <expr> ]   strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"

inoremap <expr> '   strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"
inoremap <expr> "   strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"

nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <leader>cmp :w <bar> !g++ -O2 -Wall -DLOCAL -std=c++17 % -o %:r <CR>
nnoremap <leader>c11 :w <bar> !g++ -O2 -Wall -DLOCAL -std=c++11 % -o %:r <CR>
nnoremap <leader>ri :!./%:r < in<CR>
nnoremap <leader>rc :!./%:r<CR>
nnoremap <leader>rr :!xsel -b > clipin && ./%:r < clipin <CR>

set showcmd
