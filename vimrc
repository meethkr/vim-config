execute pathogen#infect()
filetype on
syntax on
colorscheme gruvbox
set background=dark

let g:lightline = {
    \ 'colorscheme': 'default',
    \ }
filetype indent on
let NERDTreeQuitOnOpen=1
filetype plugin on
let mapleader=","
nnoremap <F3> :noh<return>

map <F4> :FZF<return>

set completeopt-=preview
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END


set termguicolors
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
set matchtime=0

nmap <F1> <nop>
imap <F1> <nop>
nmap <silent> <F2> :execute 'NERDTreeToggle ' . getcwd()<CR>

" Vim
let g:indentLine_color_term = 239

" GVim
let g:indentLine_color_gui = '#484848'

" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 5 " (default: 2)

" Background (Vim, GVim)
"let g:indentLine_bgcolor_term = 200
"let g:indentLine_bgcolor_gui = '#FF5F00'
