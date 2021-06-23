"indentation
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent

"search
set smartcase

"text rendering
set encoding=utf-8
set linebreak
set scrolloff=3
syntax enable
set t_Co=16
set termguicolors
set wrap
set textwidth=80
set colorcolumn=80

"user interface
set laststatus=2
set guicursor+=a:blinkon0
set noerrorbells
set title
set background=dark
set relativenumber

"misc
set backspace=indent,eol,start
set noswapfile

"uses local vimrc
set exrc

"remove trailing whitespace on write
autocmd BufWritePre * :%s/\s\+$//e

call plug#begin()

"fuzzy finder
Plug 'kien/ctrlp.vim'

"linter
Plug 'dense-analysis/ale'

"Plug 'lyuts/vim-rtags'

"Plug 'preservim/nerdtree'

"colorschemes
Plug 'nightsense/carbonized'
Plug 'sickill/vim-monokai'
Plug 'tomasr/molokai'
Plug 'dracula/vim'
Plug 'morhetz/gruvbox'
Plug 'cseelus/vim-colors-lucid'
Plug 'AlessandroYorba/Alduin'
Plug 'ajmwagar/vim-deus'

call plug#end()

colorscheme gruvbox

let mapleader = " "
nnoremap <leader>ff :CtrlP .<cr>
nnoremap <leader>jd :w<cr>:ALEGoToDefinition<cr>
nnoremap <leader>det :ALEDetail<cr>
nnoremap <leader>fix :ALEFix<cr>
nnoremap <leader>t :Ntree<cr>
nnoremap <leader>ex :Explore<cr>

"let g:ale_linters = {'cpp': ['clangd', 'cppcheck', 'clang-tidy']}

let g:ale_fixers = {
\                   '*': ['remove_trailing_lines', 'trim_whitespace'],
\                   'cpp': ['clang-format']
\}

"let g:ale_c_clangformat_style_option = 'BasedOnStyle: Mozilla, ColumnLimit: 80'
let g:ale_c_clangformat_options = '--style=Mozilla'

let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
