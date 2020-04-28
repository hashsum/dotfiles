if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-commentary'
call plug#end()

set t_Co=256
syntax on
colorscheme onedark

" Transparent background
hi Normal guibg=NONE ctermbg=NONE

" OPTIONS

" enable 24 bit color support
set t_8f=[38;2;%lu;%lu;%lum
set t_8b=[48;2;%lu;%lu;%lum

"set termguicolors
"set bg=light
"set bg=dark
set number
set relativenumber

" Use spaces instead of tabs
set expandtab
set tabstop=4
set shiftwidth=4
set laststatus=2
" Highlight search
set hlsearch
set ignorecase
set smartcase
set clipboard=unnamedplus
" Fuzzy search
set path+=**
set wildmenu
set wildignore+=*.class

" ===============
" Key mappings
" ===============
" Insert closing brackets automatically
inoremap {	{}<Left>
inoremap {<CR>	{<CR>}<Esc>O
inoremap {{	{
inoremap {}	{}
" Wrap line move
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap ,f :find<Space>
