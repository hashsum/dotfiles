" Plugins
"Plug 'tpope/vim-commentary'
"Plug 'junegunn/rainbow_parentheses.vim'
colorscheme elflord

syntax on
let mapleader=" "
filetype plugin indent on

" ===================
"       OPTIONS       
" ===================
set number
set relativenumber
set incsearch
set autoindent
set smartindent
" use spaces instead of tabs
set expandtab
set tabstop=4
set shiftwidth=4
set laststatus=2            " always show status line
set hlsearch                " highlight search
set ignorecase              " ignore case when searching
set smartcase
set ruler

" ===================
"    MAPPINGS
" ===================
nnoremap ,f :find<Space>
" list all buffers
nnoremap gb :ls<CR>:buffer<Space>
