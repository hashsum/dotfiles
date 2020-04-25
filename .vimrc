if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif

" Plugins`
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'dylanaraps/wal.vim'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
call plug#end()


set t_Co=256
"colorscheme PaperColor
"colorscheme gruvbox
syntax on
colorscheme onedark
"colorscheme wal

hi Normal guibg=NONE ctermbg=NONE

" enable 24 bit color support
set t_8f=[38;2;%lu;%lu;%lum
set t_8b=[48;2;%lu;%lu;%lum
"set termguicolors
"set bg=light
"set bg=dark


set number
set relativenumber

set paste

nnoremap <Space> <Nop>
vnoremap <Space> <Nop>
vmap <leader> <Space>

" Insert closing brackets automatically
inoremap {	{}<Left>
inoremap {<CR>	{<CR>}<Esc>O
inoremap {{	{
inoremap {}	{}

" Use spaces instead of tabs
set expandtab
set tabstop=4
set shiftwidth=4
set laststatus=2
"execute pathogen#infect()
"call pathogen#helptags()

" Key mappings
" map <C-n> :NERDTreeToggle<CR>
map <C-c> "+y<CR>
map <C-Space> "+p<Esc>

" Highlight search
set hlsearch

" Wrap line move
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')


nnoremap <leader>y "+y
vnoremap <leader>y "+y

set ignorecase
set smartcase
