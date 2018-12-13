set nocompatible
filetype off
"" let Vundle manage Vundle
"Bundle 'gmarik/vundle'
"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'davidhalter/jedi-vim'


" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()         

let mapleader = ","
set encoding=utf-8
filetype plugin on
filetype indent on
colors blue	    "select colorscheme
syntax on               "start syntax highlighting
set ic  "ignore case (for searching)
set scs "smart case, a search with an upercase letter becomes case sensitive
set incsearch
set number   
set textwidth=80 
set columns=80    "previous values: 120
set lines=40       "previous values: 40, 32
set autoindent
set smartindent
set wrap                "force word wrapping on (does not put hard return)
set linebreak           "does not breakup words 
set nojoinspaces        "avoids inserting two spaces when joining lines
set tabstop=4
set expandtab           "expand tabs to spaces
set shiftwidth=4
set sts=4               "set softtabstop
set showmatch
set vb t_vb=
set ruler
set nohls
"** locations of backup directories
set backup
set backupdir=$HOME/vim_backup "all the *~ files go here
set directory=$HOME/vim_backup "all the *.swp files go here
set virtualedit=all
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set history=50		" keep 50 lines of command line history
set showcmd		" display incomplete commands

"** Make unnamed buffer the default for clipboard (see line below)
set clipboard=unnamed   "all yanking goes to clipboard
"keep first yanked on the top of reg
xnoremap p pgvy   
"* status line gives information about the file, the character under the cursor and its position
set statusline=%f%m%r%h%w\ [%{&ff}]\ [%Y]\ [ASCII=\%3.3b]\ [HEX=\%02.2B]\ [%l,%v][%p%%]\ [TOTAL=%L]
set laststatus=2        "always show the statusline

" SQLite
" let g:dbext_default_profile_sqlite = 'type=SQLITE:dbname=c:\sql\aps.db'

" NERDTree
"" Open NERDTree with custom shortcut, here 'zz'
nmap <leader>z :NERDTreeToggle<cr>
"" Optional, to show special NERDTree browser characters properly (e.g. on
"remote linux system)
let g:NERDTreeDirArrows=0
"" Show bookmarks by default
let NERDTreeShowBookmarks=1

