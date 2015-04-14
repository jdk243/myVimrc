set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on
colorscheme Monokai
set autoindent
set backspace=indent,eol,start
set complete-=1
set shiftwidth=2
set smarttab

set nrformats-=octal

set ttimeout
set ttimeoutlen=100

set incsearch
if maparg('<C-L>', 'n') ==# ''
	nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

set laststatus=2
set ruler
set showcmd
set wildmenu

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
