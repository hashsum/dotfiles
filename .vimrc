if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-commentary'
call plug#end()

set t_Co=256
syntax on
colorscheme onedark

" transparent background
hi Normal guibg=NONE ctermbg=NONE

" ===================
"       OPTIONS       
" ===================
" enable 24 bit color support
set t_8f=[38;2;%lu;%lu;%lum
set t_8b=[48;2;%lu;%lu;%lum

set termguicolors

set number
set relativenumber
" use spaces instead of tabs
set expandtab
set tabstop=4
set shiftwidth=4
set laststatus=2
set hlsearch
set ignorecase
set smartcase
set clipboard=unnamedplus
" fuzzy search
set path+=**
set wildmenu
set wildignore+=*.class
" escape timeout in insert and command-line mode
set ttimeout
set ttimeoutlen=100

" ===================
"    MAPPINGS
" ===================
autocmd FileType java set colorcolumn=101
nnoremap ,f :find<Space>
" list all buffers
nnoremap gb :ls<CR>:buffer<Space>

" ===================
"    LANGUAGES
" ===================
