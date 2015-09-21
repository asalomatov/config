set nocompatible
"filetype on
" set up vundle
filetype off "required for vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'    " Required
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'klen/python-mode' 
"Plugin 'majutsushi/tagbar'  " requires ctags
Plugin 'flazz/vim-colorschemes' 
Plugin 'vim-scripts/Vim-R-plugin' 
Plugin 'epeli/slimux' 
"Plugin 'ivanov/vim-ipython'
"Plugin 'ervandew/screen' 
"Plugin 'ervandew/supertab' 
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'plasticboy/vim-markdown'
"Plugin 'altercation/vim-colors-solarized'
"filetype plugin indent on " Required

call vundle#end() "required
filetype plugin indent on
colors blacklight	    "select colorscheme
syntax on               "start syntax highlighting
map <F3> :NERDTreeToggle<cr>
nnoremap <F2> :TagbarToggle<cr>
" R script settings
let maplocalleader = ","
map <leader>s :SlimuxREPLSendLine<CR>
vmap <leader>s :SlimuxREPLSendSelection<CR>
"let g:jedi#show_call_signatures = "0"
"nnoremap <F3> :RainbowParenthesesToggleAll<cr>
" Python-mode
" Activate rope
" Keys
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
"let g:pymode_rope = 1
"let g:pymode_rope_vim_completion = 1 " use jedi-vim for completion
"let g:pymode_options_max_line_length = 80

" Documentation
"let g:pymode_doc = 1
"let g:pymode_doc_key = 'K'

"Linting
"let g:pymode_lint_on_write = 0
"let g:pymode_lint_unmodified = 0
"let g:pymode_lint_on_fly = 0
"let g:pymode_lint_message = 1
"let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe']

" Support virtualenv
"let g:pymode_virtualenv = 1

" Enable breakpoints plugin
"let g:pymode_breakpoint = 1
"let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
"let g:pymode_syntax = 1
"let g:pymode_syntax_all = 1
"let g:pymode_syntax_indent_errors = g:pymode_syntax_all
"let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
" let g:pymode_folding = 0
" 
" notes
"let g:notes_directories = ['~/Dropbox/Notes']
"let g:notes_suffix = '.txt'

set foldlevelstart=99
nnoremap <Space> za
nnoremap <S-Space> zA
vnoremap <S-Space> zA

set term=xterm-256color
set ic "ignore case (for searching)
set scs "smart case, a search with an upercase letter becomes case sensitive
set number   
set textwidth=120 
set columns=120    "previous values: 120
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
set history=500		" keep 50 lines of command line history
set showcmd		" display incomplete commands

"** Make unnamed buffer the default for clipboard (see line below)
set clipboard=unnamed   "all yanking goes to clipboard
"keep first yanked on the top of reg
xnoremap p pgvy   
"* status line gives information about the file, the character under the cursor and its position
set statusline=%f%m%r%h%w\ [%{&ff}]\ [%Y]\ [ASCII=\%3.3b]\ [HEX=\%02.2B]\ [%l,%v][%p%%]\ [TOTAL=%L]
set laststatus=2        "always show the statusline
