""""""" Plugin management stuff """""""
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle')

Plugin 'gmarik/Vundle.vim'

" Custom plugins...
" vim-R
Plugin 'jalvesaq/Nvim-R'
" Autocomplete for python
Plugin 'davidhalter/jedi-vim'
" Remove extraneous whitespace when edit mode is exited
Plugin 'thirtythreeforty/lessspace.vim'
" LaTeX editing
Plugin 'LaTeX-Box-Team/LaTeX-Box'
" Status bar mods
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
" After all plugins...
call vundle#end()
filetype plugin indent on

let g:python_host_prog = '/Users/asalomatov/miniconda2/bin/python'
let g:python3_host_prog = '/Users/asalomatov/miniconda3/bin/python'
let g:loaded_python_provider = 1
let g:python_host_skip_check = 1
""""""" Jedi-VIM """""""
" Don't mess up undo history
let g:jedi#show_call_signatures = "0"



""""""" General coding stuff """""""
" Highlight 80th column
set colorcolumn=80
" Always show status bar
set laststatus=2
" Let plugins show effects after 500ms, not 4s
set updatetime=500
" Disable mouse click to go to position
set mouse-=a
" Don't let autocomplete affect usual typing habits
set completeopt=menuone,preview,noinsert
""""""" Python stuff """""""
syntax enable
set number showmatch
set shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent
let python_highlight_all = 1


""""""" Keybindings """""""
" Set up leaders
let mapleader=","
let maplocalleader=","


autocmd BufNewFile,BufRead *.tex,*.bib noremap <buffer> <C-b> :w<cr>:new<bar>r !make<cr>:setlocal buftype=nofile<cr>:setlocal bufhidden=hide<cr>:setlocal noswapfile<cr>
autocmd BufNewFile,BufRead *.tex,*.bib imap <buffer> <C-b> <Esc><C-b>
