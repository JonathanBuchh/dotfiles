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
set tabstop=8
set shiftwidth=8
set autoindent
set magic
set number
set scrolloff=3
set sidescroll=3
set ruler
set cc=80
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
set nofoldenable
set lazyredraw
set spell

noremap <silent> k gk
noremap <silent> j gj

let g:fzf_layout = { 'window': { 'width': 1.0, 'height': 0.5, 'relative': v:true, 'yoffset': 1.0, 'border': 'none' } }

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
let g:vimwiki_list = [{'path': '~/Documents/Notes', 'syntax': 'markdown', 'ext': '.md', 'diary_rel_path' : 'Dailies'}]
nmap <C-Up> <Plug>VimwikiDiaryNextDay
nmap <C-Down> <Plug>VimwikiDiaryPrevDay

" Custom appearance
syntax enable
highlight Search ctermbg=12
highlight Normal cterm=none ctermfg=white
highlight clear SignColumn
highlight Comment cterm=bold ctermfg=none
highlight StatusLine cterm=none ctermbg=none ctermfg=darkgrey
highlight StatusLineNC cterm=none ctermbg=none ctermfg=darkgrey
highlight ColorColumn ctermbg=darkgrey guibg=lightgrey
highlight lineNr ctermfg=grey cterm=italic

autocmd FileType markdown setlocal tw=80
autocmd FileType arduino setlocal et ts=4 sw=4
