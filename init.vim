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
Plug 'roxma/nvim-completion-manager'
" Lint plugin.
Plug 'w0rp/ale'
" Insert or delete brackets, parens, quotes in pair.
Plug 'jiangmiao/auto-pairs'
" Solution for snippets in Vim.
Plug 'SirVer/ultisnips'
call plug#end()

colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark='medium'

" Backup modified files in memory.
set hidden

" Number and relatove number for each file.
set number
set relativenumber

" Enable mouse.
" set mouse=a

" Preview split command. 
set inccommand=split

" Leader keys
let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>: A:<esc>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>
