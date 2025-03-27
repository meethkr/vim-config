execute pathogen#infect()

syntax on
filetype on
filetype indent on
filetype plugin on
set belloff=all

colorscheme badwolf
set background=dark
let g:lightline = {
    \ 'colorscheme': 'powerlineish'
    \ }

"" Key mappings""
let mapleader=","
nnoremap <F3> :noh<return>
map <F4> :FZF<return>
nmap <F1> <nop>
imap <F1> <nop>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"no big box in autocomplete
set completeopt-=preview

"nerdtree stuff
autocmd QuitPre * if &filetype == 'nerdtree' | wincmd p | endif
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'nerdtree') | quit | endif
let NERDTreeQuitOnOpen=1
"" Open nerdtree if no filename specified
augroup nerdtree
  autocmd!
  autocmd VimEnter * if argc() == 0 | NERDTree | endif
augroup END

"" Relative numbers in command mode, absolute in edit. No numbers in nerdtree
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * if &filetype != 'nerdtree' | set relativenumber | endif
  autocmd BufLeave,FocusLost,InsertEnter   * if &filetype != 'nerdtree' | set norelativenumber number| endif
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
