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

" use <esc> to cancel search highlighting
nnoremap <silent> <ESC> :nohlsearch<CR>

" Open file under cursor in a new tab
" (if present, at specified line number)
nnoremap gf <C-W>gF

" }}}

runtime ./plug.vim

" Plugins options {{{

" disables dot repeatability (doesn't include brackets in the 
" insert sequence)
let g:pear_tree_repeatable_expand = 0
let g:pear_tree_smart_openers = 1

" air-line
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
" coq settings 
let g:coq_settings = {'auto_start': 'shut-up'}
" let g:coq_settings.keymap = {'jump_to_mark': "<C-\""}

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" }}}

" Plugins Mappings {{{

noremap <leader>fe :NERDTreeToggle<CR>

noremap <leader>git :Magit<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <C-P> <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
" command! -bang -nargs=? -complete=dir Files
" 			\ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', '~/.config/nvim/plugged/fzf.vim/bin/preview.sh {}']}, <bang>0)
" nnoremap <C-P> :Files<CR>

" }}}

colorscheme jellybeans

set exrc

runtime! plugin/**/*.vim
runtime! plugin/**/*.lua
