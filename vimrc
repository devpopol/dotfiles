
call pathogen#infect()
syntax on
filetype plugin indent on
set nocompatible
set modelines=0
"set relativenumber
set hidden

" bind the leader to comma
let mapleader = ","

"search stuff
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

nnoremap <leader><space> :noh<cr>
nnoremap <leader>g yypVr=
nnoremap <tab> %
vnoremap <tab> %

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" copy in the system clipboard
map <leader>y "*y

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" nnoremap ; :

" syntax enable
" set background=dark
" colorscheme molokai

autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType html setlocal expandtab shiftwidth=2 tabstop=2
" autocmd FileType typescript setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType haskell setlocal expandtab shiftwidth=2 tabstop=2

autocmd BufWritePre * %s/\s\+$//e

" Command-T options
" set wildignore+=*.o,*.obj,**/.git/*,**/.svn/*,**/node_modules/**,node_modules/**,.git/*,svn/*


" let g:CommandTTraverseSCM = 'pwd'
" let g:typescript_indent_disable = 1
"
let g:typescript_indent_disable = 1
set rtp+=/usr/local/opt/fzf
" colorscheme solarized

" ------------------------------------------------------
"  fzf
" ------------------------------------------------------
nmap ; :Buffers<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>r :Tags<CR>

" ------------------------------------------------------
" the_silver_searcher
" ------------------------------------------------------

let g:ackprg = 'ag --nogroup --nocolor --column'

" vim-terraform
let g:terraform_align=1

map <C-n> :NERDTreeToggle<CR>
