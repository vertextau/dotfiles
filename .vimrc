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

set spellfile=~/.vim/spell/en.utf-8.add

set number
set numberwidth=5

" command-line completion
set wildmenu
set wildmode=longest,list

set smarttab
set autoindent
set tabstop=4
set shiftwidth=4

let mapleader = ','
let maplocalleader = ','

" Spelling
set spelllang=en_us

" Extras
autocmd FileType tex setlocal spellfile+=~/.vim/spell/latex.utf-8.add

map <Leader>c :%s/\s\+$//e<CR>
map <Leader>t :silent !ctags -R<CR>

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
