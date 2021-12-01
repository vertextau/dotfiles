syntax off
colorscheme default
filetype plugin indent on

set autoindent
"set expandtab
set encoding=utf-8
set laststatus=2
set listchars=eol:$,tab:>-,space:.
set nomodeline
set title
set noesckeys
set hidden

set number
set numberwidth=5

" command-line completion
set wildmenu
set wildmode=longest,list

set tabstop=4
set softtabstop=4
set shiftwidth=4

let mapleader = ','
let maplocalleader = ','

" Extras
map <Leader>c :%s/\s\+$//e<CR>
map <Leader>t :silent !ctags -R<CR>
