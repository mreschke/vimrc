" All new custom and OS agnostic vim configuration using vim-plug plugin manager
" mReschke 2019-10-30


" ##############################################################################
" Vim Cheatsheet
" ##############################################################################
" vim-plug
"   Install plugin, add to vimrc and run :PlugInstall
"   Uninstall, remove from vimrc and run :PlugClean




" ##############################################################################
" Plugins
" ##############################################################################
call plug#begin('~/.vim/plugged')

" Sinsible Defaults
Plug 'tpope/vim-sensible'

" NERDTree file tree
Plug 'scrooloose/nerdtree'

" CTRLP fuzzy buffer search
Plug 'ctrlpvim/ctrlp.vim'

" Color Schemes
Plug 'nanotech/jellybeans.vim'

" Initialize plugin system
call plug#end()




" ##############################################################################
" Configurations
" ##############################################################################
set nowrap
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set shiftwidth=4
set shiftround
set autoindent
set copyindent
set number
set showmatch
set pastetoggle=<F2>
set ignorecase
set hlsearch
set incsearch
set nobackup
set noswapfile

" Change leader key from default \ to ,
let mapleader=","
let maplocalleader="\\"

" Now ; acts liks :, so you can skip pressing shift
nnoremap ; :

" Toggle line numbers
nnoremap <leader>m :setlocal number!<cr>

" Toggle NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1

" CTRLP (Command Palette, already works with CTRL+P)
nnoremap <leader>. :CtrlPBuffer<CR>

" New Q and q keys to quit quicker
nnoremap <leader>Q :q<CR>
nnoremap <leader>q :bd<CR>

" Edit vimrc
nnoremap <silent> <leader>ev :e ~/.vim/vimrc<CR>

" Clear the search register
nnoremap <silent> <leader>/ :nohlsearch<CR>

" Get out of insert mode with ii (can still use Esc)
inoremap ii <Esc>

cnoremap w!! w !sudo tee % >/dev/null




" ##############################################################################
" Color Schemes
" ##############################################################################
set background=dark

" Enable true color (material requires this)
"if exists('+termguicolors')
"   let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"	set termguicolors
"endif

"let g:jellybeans_use_lowcolor_black = 1
let g:jellybeans_overrides = {
\   'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
\}
if has('termguicolors') && &termguicolors
    let g:jellybeans_overrides['background']['guibg'] = 'none'
endif
colorscheme jellybeans

