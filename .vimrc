call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
call plug#end()

set clipboard+=unnamedplus
" set laststatus=2
" set encoding=utf-8
" set autoindent
" set magic
" set relativenumber
set scrolloff=3
set sidescroll=3
" set ruler
" set nowrap
set ignorecase
" set smartcase
" set splitbelow
" set hidden
" set notimeout
" set showmatch
" set hlsearch
set mouse=a
set noswapfile
" set lazyredraw
set spell
" set termguicolors
" set wrap
" set linebreak
" set scrolloff=999

noremap <silent> k gk
noremap <silent> j gj

let mapleader = "\<space>"
nnoremap \\ :noh<cr> " Clear higlighting
nnoremap <C-p> :FZF<cr>
nnoremap <leader>c :!make<cr>

" Delete trailing whitespace and newlines
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\n\+\%$//e
autocmd BufWritePre *.[ch] %s/\%$/\r/e
