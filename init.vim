" Author: João Mateus Emílio <ajmemilio@gmail.com>
" Source: http://github.com/ajmemilio/vim-files

call plug#begin()
" Gruvbox theme.
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
" Commando-line fuzzy finder.
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' 
" True snippet and additional text editing support.
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Lint plugin.
Plug 'w0rp/ale'
" Insert or delete brackets, parens, quotes in pair.
Plug 'jiangmiao/auto-pairs'
" Solution for snippets in Vim.
Plug 'SirVer/ultisnips'
Plug 'itchyny/lightline.vim'
" NERDtree plugins.
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
" Shows a git diff in the sign column.
Plug 'airblade/vim-gitgutter'
call plug#end()

colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark='medium'

let g:lightline = {
    \ 'colorscheme': 'wombat',
    \}

" Enable default clipboard.
set clipboard+=unnamedplus

" Backup modified files in memory.
set hidden

" Number and relatove number for each file.
set number
set relativenumber

" Enable mouse.
" set mouse=a

" Preview split command. 
set inccommand=split

" Enable Python.
let g:python3_host_prog = '/usr/bin/python3'
" Python lint.
let b:ale_linters = ['pyflakes', 'flake8', 'pylint']
" Configure fixers for applying formatting on save.
let b:ale_fixers = ['eslint']
let b:ale_fix_on_save = 1

" Leader keys
let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>: A:<esc>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
