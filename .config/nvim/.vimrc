if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif

" Plugins`
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim'
call plug#end()


colorscheme gruvbox

" enable 24 bit color support
set t_8f=[38;2;%lu;%lu;%lum
set t_8b=[48;2;%lu;%lu;%lum
set termguicolors
set bg=dark

set number
set relativenumber

set paste

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

" Key mappings
" map <C-n> :NERDTreeToggle<CR>
map <C-c> "+y<CR>
map <C-Space> "+p<Esc>

" Map gb to go to previous tab
map gb gT
