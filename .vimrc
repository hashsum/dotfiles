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
set t_Co=256
set termguicolors

set number
set relativenumber
" use spaces instead of tabs
set expandtab
set tabstop=4
set shiftwidth=4
set laststatus=2            " always show status line
set hlsearch                " highlight search
set ignorecase              " ignore case when searching
set smartcase
set clipboard=unnamedplus
set hidden                  " move to another buffer without saving
set splitbelow
set splitright
" fuzzy search
set path+=**
set wildmenu
set wildignore+=*.class
" escape timeout in insert and command-line mode
set ttimeout
set ttimeoutlen=100
" Java bindings
autocmd FileType java nnoremap ,g :vimgrep // **/*.java<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
autocmd FileType java set tags+=~/src/java-src/tags,~/src/javafx-src/tags,~/src/java8-src/tags
autocmd FileType java set path+=~/src/java-src/
autocmd FileType java nnoremap ,jc ipublic class <C-R>=expand("%:t:r")<CR> {<CR>}<Esc>
autocmd FileType java nnoremap ,jm ipublic static void main(String[] args) {<CR>}<Esc>

" ===================
"    MAPPINGS
" ===================
nnoremap ,f :find<Space>
" list all buffers
nnoremap gb :ls<CR>:buffer<Space>
" esc removes highlighting
nnoremap <Esc> :nohl<CR><Esc>
" tags jump
nnoremap <C-]> g<C-]>

nnoremap <C-H>  <C-W>h
nnoremap <C-J>  <C-W>j
nnoremap <C-K>  <C-W>k
nnoremap <C-L>  <C-W>l
nnoremap <C-W>l :redr<CR>
nnoremap <C-W>- <C-W>5-
