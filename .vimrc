set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on 
set background=dark
colorscheme mustang
set autoindent
set backspace=indent,eol,start
set complete-=1
set shiftwidth=2
set smarttab

set nrformats-=octal

set ttimeout
set ttimeoutlen=100

set laststatus=2
set ruler

if !&scrolloff
	set scrolloff=1
endif
if !&sidescrolloff
	set sidescrolloff=5
endif
set display+=lastline

if &encoding ==# 'latin1' && has('gui_running')
	set encoding=utf-8
endif

if &listchars ==# 'eol:$'
	set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

if v:version > 703 || v:version == 703 && has("patch541")
	set formatoptions+=j
endif

if has('path_extra')
	setglobal tags-=./tags tags-=./tags; tags^=./tags;
endif

if &shell =~# 'fish$'
	set shell=/bin/bash
endif

set autoread
set fileformats+=mac

if &history < 1000
	set history=1000
endif
if &tabpagemax < 50
	set tabpagemax=50
endif
if !empty(&viminfo)
	set viminfo^=!
endif
set sessionoptions-=options

if &t_Co == 8 && $TERM !~# '^linux'
	set t_Co=16
endif

inoremap <C-U> <C-G>u<C-U>

syntax enable     " enable syntax processing

set tabstop=2     " number of visual spaces per TAB
set softtabstop=2 " number of spaces in tab when editing

"UI Config
set number " show line numbers
set showcmd " show last command in bottom right
set cursorline " highlight current line
filetype indent on " load filetype-specific indent files
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when we need to
set showmatch " highlight matching [{()}]


"Searching
set incsearch " search as characters are entered
set hlsearch " highlight matches

"Folding
set foldenable " enable folding
set foldlevelstart=10 "open most folds by default
set foldnestmax=10 "10 nested fold max
nnoremap <space> za
set foldmethod=indent " fold based on indent level

"Movement
"move vertically by line regardless of line wrap
nnoremap j gj
nnoremap k gk
"move to beginning/end of line
nnoremap B ^
nnoremap E $
nnoremap ^ <nop>
nnoremap $ <nop>
" highlight last inserted text
nnoremap gV `[v`]

"Leader Shortcuts
let mapleader="," "leader is comma
inoremap jk <esc>

