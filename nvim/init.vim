" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdcommenter'
Plug 'rstacruz/vim-closer'
Plug 'neoclide/coc.nvim'
Plug 'vim-airline/vim-airline'
Plug 'psf/black'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'chengzeyi/fzf-preview.vim'
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdtree' 
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

" Initialize plugin system
call plug#end()

syntax on

filetype plugin indent on
set nowrap
set guicursor=
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set nu
set relativenumber
set hidden
set nobackup
set undofile
set undodir=~/.local/share/nvim/undodir
set incsearch
set scrolloff=8
set signcolumn=yes
set cursorline
set noshowmode
set completeopt=menuone,noinsert,noselect
set encoding=UTF-8
set shortmess+=c
autocmd BufWritePre *.py execute ':Black'
let mapleader=" "
map <leader>/ :nohl<CR>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

nnoremap <C-p> :FZF<CR>
nnoremap <silent> <leader>l :bn<CR>
nnoremap <silent> <leader>h :bp<CR>

highlight ColorColumn ctermbg=0
colorscheme gruvbox

" FZF config
" This is the default option:
"   - Preview window on the right with 50% width
"   - CTRL-/ will toggle preview window.
" - Note that this array is passed as arguments to fzf#vim#with_preview function.
" - To learn more about preview window options, see `--preview-window` section of `man fzf`.
let g:fzf_preview_window = ['right:70%', 'ctrl-/']

" NERDTree Git
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
let g:NERDTreeGitStatusShowIgnored = 1 " a heavy feature may cost much more time. default: 0


let g:airline_theme='base16'
let g:airline#extensions#tabline#enabled = 1
source $HOME/.config/nvim/plug-config/coc.vim
