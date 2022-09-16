set encoding=utf-8
set nowrap

syntax on
filetype indent on

set autoindent
set smartindent
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

set hlsearch
set ignorecase
set incsearch

set lazyredraw
set nobackup
set noswapfile
set updatetime=50
set timeoutlen=300

set noruler
set number
set noerrorbells
set novisualbell
set shell=/bin/bash
set spell
set confirm

"---*- keymappings -*---
let mapleader=" "
nnoremap H ^
nnoremap L $

nnoremap <leader>wj <C-w>s
nnoremap <leader>wl <C-w>v

nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
