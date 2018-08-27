execute pathogen#infect()
filetype on
syntax on
colorscheme noctu
filetype indent on
let NERDTreeQuitOnOpen=1
filetype plugin on
let mapleader=","
nnoremap <F3> :noh<return>

set nu
set hidden
set history=10000
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set showmatch
set laststatus=2
set noshowmode

nmap <F1> <nop>
imap <F1> <nop>
nmap <silent> <F2> :execute 'NERDTreeToggle ' . getcwd()<CR>
