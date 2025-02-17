
" -------------- Notes --------------
" To install plugins, type :PlugInstall
" To uninstall plugins, type :PlugClean
" -----------------------------------

call plug#begin(stdpath('data') . '/plugged')

Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
" Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'} " Auto Completion
Plug 'https://github.com/tpope/vim-commentary' " To comment run gcc
Plug 'https://github.com/tmsvg/pear-tree' " Automatically pairs brackets, quotes etc.
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/jreybert/vimagit'
Plug 'https://github.com/nvim-lua/plenary.nvim'
Plug 'https://github.com/lervag/vimtex'
if has('nvim') 
	Plug 'https://github.com/neovim/nvim-lspconfig'
	Plug 'https://github.com/glepnir/lspsaga.nvim'
	Plug 'https://github.com/nvim-telescope/telescope.nvim'
	Plug 'https://github.com/nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'https://github.com/ms-jpq/coq_nvim', {'branch': 'coq'}
	Plug 'https://github.com/ms-jpq/coq.artifacts', {'branch': 'artifacts'}
	Plug 'https://github.com/ms-jpq/coq.thirdparty', {'branch': '3p'}
endif

call plug#end()


