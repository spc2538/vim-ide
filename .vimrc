set clipboard=unnamedplus
set splitbelow
set mouse=a
set nu
set tabstop=4 
set shiftwidth=4 
set expandtab
set incsearch
set hlsearch
set noswapfile
set breakindent
set linebreak
set hidden
set backspace=2
set showcmd
set laststatus=2
set autowrite
set cursorline
set autoread
set scrolloff=4
syntax on
filetype on


" Plugin manager
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/plugged')
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on
" Plugin manager

Plugin 'sheerun/vim-polyglot'
Plugin 'preservim/nerdtree'
Plugin 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }
Plugin 'AhmedAbdulrahman/vim-aylin'
Plugin 'vim-airline/vim-airline'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-commentary'
Plugin 'morhetz/gruvbox'
Plugin 'andreasvc/vim-256noir'
Plugin 'ap/vim-buftabline'
Plugin 'danilo-augusto/vim-afterglow'

" set background=light
" colorscheme delek

set background=dark
colorscheme afterglow

let NERDTreeShowBookmarks = 1   " Show the bookmarks table
let NERDTreeShowHidden = 1      " Show hidden files
let NERDTreeShowLineNumbers = 0 " Hide line numbers
let NERDTreeMinimalMenu = 1     " Use the minimal menu (m)
let NERDTreeWinPos = "left"     " Panel opens on the left side
let NERDTreeWinSize = 31        " Set panel width to 31 columns

nmap <F2> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
xnoremap <silent> <C-2> :w !wl-copy<CR><CR>
xnoremap <silent> <C-k> :w !wl-copy<CR><CR>

autocmd FileType html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType lua setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType dart setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2


" Add these settings after installing vim-ide"

" WSL yank support
" let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
" if executable(s:clip)
"     augroup WSLYank
"         autocmd!
"         autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
"     augroup END
" endif
