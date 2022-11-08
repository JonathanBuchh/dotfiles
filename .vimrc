set nocompatible

call plug#begin()
Plug 'ap/vim-css-color'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
call plug#end()

set clipboard+=unnamedplus
set laststatus=2
set t_Co=256
set encoding=utf-8
set autoindent
set magic
set relativenumber
set scrolloff=3
set sidescroll=3
set ruler
set nowrap
set ignorecase
set smartcase
set splitbelow
set hidden
set notimeout
set incsearch
set showmatch
set hlsearch
set mouse=a
set noswapfile
" set nofoldenable
set lazyredraw
set spell
set termguicolors
set wrap
set linebreak

noremap <silent> k gk
noremap <silent> j gj

let mapleader = "\<space>"
nnoremap \\ :noh<cr> " Clear higlighting
nnoremap cc :center<cr>
inoremap <C-c> <ESC>
set listchars=tab:▸\ ,eol:¬,space:.
nnoremap <leader>l :set list!<CR>
nnoremap <C-p> :FZF<cr>
autocmd! User GoyoLeave silent! source ~/.vimrc

" Delete trailing whitespace and newlines
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\n\+\%$//e
autocmd BufWritePre *.[ch] %s/\%$/\r/e

" Vimwiki
let g:vimwiki_list = [{'path': '~/Documents/Notes', 'syntax': 'markdown', 'ext': '.md', 'diary_rel_path' : '04 - Dailies'}]
nmap <C-Up> <Plug>VimwikiDiaryNextDay
nmap <C-Down> <Plug>VimwikiDiaryPrevDay
let g:markdown_folding = 1
let g:vimwiki_folding='custom'

" LaTeX
nnoremap <leader>c :!pdflatex % && biber $(basename % .tex) && pdflatex % && open $(basename % .tex).pdf && open -a Alacritty<CR>

syntax enable
set background=dark
colorscheme selenized

autocmd FileType vimwiki setlocal ts=4 sw=4 et
autocmd FileType arduino setlocal et ts=4 sw=4
