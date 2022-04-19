syntax off
colorscheme default
filetype plugin indent on

set encoding=utf-8
set fileformat=unix
set hidden
set laststatus=2
set listchars=eol:$,tab:>-
set noesckeys
set nomodeline

set number
set numberwidth=5

" command-line completion
set wildmenu
set wildmode=longest,list

set expandtab
set shiftwidth=4
set smarttab
set autoindent

let mapleader = ','
let maplocalleader = ','

" Spelling
set spelllang=en_us

" Extras
map <Leader>c :%s/\s\+$//e<CR>
map <Leader>t :silent !ctags -R<CR>

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
