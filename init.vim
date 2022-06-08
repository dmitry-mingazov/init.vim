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
set updatetime=300

set nobackup
set nowritebackup

set splitright
set splitbelow
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

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>

" }}}

colorscheme jellybeans
