" Basic options {{{
set number
set autoindent
set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop=4
set mouse=a
set incsearch
set wildmenu
set wildmode=list:longest
set wildignore=*.docs,*.jpg,*.png,*.gif,*pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
filetype on
filetype plugin on
filetype indent on

set nobackup
set nowritebackup

" unnecessary because nvim is alway nocompatible
"set nocompatible

" }}}

" Vimscript file settings {{{
augroup filetype_vim
  autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Edit vim.init mappings {{{
let mapleader=','

nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
" }}}

" Custom mappings {{{
nnoremap <leader>w :write<CR>
nnoremap <leader>q :quit<CR>

inoremap jk <ESC>

" move between tabs 
nnoremap H gT
nnoremap L gt

" move between splits
nnoremap <C-L> <C-W><C-L>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-H> <C-W><C-H>

" Open file under cursor in a new tab
" (if present, at specified line number)
nnoremap gf <C-W>gF

" }}}

" Plugins {{{
"
" -------------- Notes --------------
" To install plugins, type :PlugInstall
" To uninstall plugins, type :PlugClean
" -----------------------------------

call plug#begin(stdpath('data') . '/plugged')

Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'} " Auto Completion
Plug 'https://github.com/tpope/vim-commentary' " To comment run gcc
Plug 'https://github.com/junegunn/fzf.vim' " File fuzzy search
Plug 'https://github.com/tmsvg/pear-tree' " Automatically pairs brackets, quotes etc.
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/jreybert/vimagit'

call plug#end()
" }}}

" Plugins options {{{

" disables dot repeatability (doesn't include brackets in the 
" insert sequence)
let g:pear_tree_repeatable_expand = 0
let g:pear_tree_smart_openers = 1

" air-line
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


" }}}

" Plugins Mappings {{{

noremap <leader>fe :NERDTreeToggle<CR>

noremap <leader>git :Magit<CR>

" }}}

colorscheme jellybeans
