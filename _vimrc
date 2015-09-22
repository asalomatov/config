set nocompatible
"filetype off
"" let Vundle manage Vundle
"" required! 
"Bundle 'gmarik/vundle'
"
filetype plugin on
filetype indent on
set ofu=syntaxcomplete#Complete
au BufNewFile,BufRead,BufEnter *.cpp,*.hpp,*.h set ofu=omni#cpp#complete#Main
autocmd FileType python set ofu=pythoncomplete#Complete
"source $VIMRUNTIME/mswin.vim
"behave mswin
:if has("gui_running")
    :set guioptions-=m  "remove menu bar
    :set guioptions-=T  "remove toolbar
    :set guioptions-=r  "remove right-hand scroll bar
    :set guifont=Ubuntu\ Mono\ 11  "set font and its size Lucida_Sans_Typewriter:h10
:endif
colors blue	    "select colorscheme
syntax on               "start syntax highlighting
set ic                  "ignore case (for searching)
set scs                 "smart case, a search with an upercase letter becomes case sensitive
set number   
set textwidth=80 
set columns=80    "previous values: 120
set lines=40       "previous values: 40, 32
set autoindent
set smartindent
set wrap                "force word wrapping on (does not put hard return)
set linebreak           "does not breakup words 
set nojoinspaces        "avoids inserting two spaces when joining lines
set tabstop=2
set expandtab           "expand tabs to spaces
set shiftwidth=2
set sts=2               "set softtabstop
set smarttab            "convert spaces to tabs for quicker editing
set showmatch
set vb t_vb=
set ruler
set nohls
"** locations of backup directories
set backup
set backupdir=$HOME/backup "all the *~ files go here
set directory=$HOME/backup "all the *.swp files go here
set incsearch
set virtualedit=all
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set history=50		" keep 50 lines of command line history
set showcmd		" display incomplete commands

"** Make unnamed buffer the default for clipboard (see line below)
"set clipboard=unnamed   "all yanking goes to clipboard
"keep first yanked on the top of reg
"xnoremap p pgvy   
"* status line gives information about the file, the character under the cursor and its position
set statusline=%f%m%r%h%w\ [%{&ff}]\ [%Y]\ [ASCII=\%3.3b]\ [HEX=\%02.2B]\ [%l,%v][%p%%]\ [TOTAL=%L]
set laststatus=2        "always show the statusline

"
" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
"
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype (i.e. parameters) in popup window

autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" 
" -- ctags --
" map <ctrl>+F12 to generate ctags for current folder:
map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
" add current directory's generated tags file to available tags
set tags+=./tags
set tags+=$HOME/myTags/std.tags
" set tags+=$HOME\myTags\rinside.tags
" set tags+=$HOME\myTags\rcpp.tags

" SQLite
" let g:dbext_default_profile_sqlite = 'type=SQLITE:dbname=c:\sql\aps.db'



" Lines added by the Vim-R-plugin command :RpluginConfig (2013-Dec-04 00:13):
" Change the <LocalLeader> key:
let maplocalleader = ","
" Use Ctrl+Space to do omnicompletion:
if has("gui_running")
    inoremap <C-Space> <C-x><C-o>
else
    inoremap <Nul> <C-x><C-o>
endif

" Force Vim to use 256 colors if running in a capable terminal emulator:
if &term =~ "xterm" || &term =~ "256" || $DISPLAY != "" || $HAS_256_COLORS == "yes"
    set t_Co=256
endif


" making vim-ipython complete function local to a buffer
let g:ipy_completefunc = 'local'




" Lines added by the Vim-R-plugin command :RpluginConfig (2014-Aug-26 21:16):

" NERDTree
"" Open NERDTree with custom shortcut, here 'zz'
let mapleader = "z"           
nmap <leader>z :NERDTreeToggle<cr>

"" Optional, to show special NERDTree browser characters properly (e.g. on
"remote linux system)
let g:NERDTreeDirArrows=0

"" Show bookmarks by default
let NERDTreeShowBookmarks=1

"" Open *.pdf, .jpg, *.doc and other files with GUI applications (choose
"solution for your OS)
"" Linux: open PDFs with xpdf
au BufRead *.pdf silent !xpdf %<.pdf 2>/dev/null &
"" OS X: open PDFs with associated PDF viewer
au BufRead *.pdf silent !open %<.pdf 2>/dev/null &
