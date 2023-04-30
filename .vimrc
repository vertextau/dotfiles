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

set spelllang=en_us
set spellfile=~/.vim/spell/en.utf-8.add

set number
set numberwidth=5

set wildmenu
set wildmode=longest,list

set smarttab
set autoindent
set tabstop=4
set shiftwidth=4

let mapleader = ','
let maplocalleader = ','

autocmd FileType tex,plaintex setlocal spellfile+=~/.vim/spell/latex.utf-8.add
autocmd FileType markdown,tex,plaintex,mail,text setlocal tw=80

map <Leader>c :%s/\s\+$//e<CR>
map <Leader>t :silent !ctags -R<CR>

nnoremap <Leader>b :ls<CR>:b<Space>
