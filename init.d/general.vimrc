" ============================================================================
" General
" ============================================================================
" Set how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the source
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ','
let g:mapleader = ','

" ============================================================================
" User interface
" ============================================================================
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*pyc

" Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be start about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
" set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


" ============================================================================
" Colors and fonts
" ============================================================================
" Enable syntax highlighting
syntax enable

colorscheme hybrid
set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
	set guioptions-=T
	set guioptions+=e
	set t_Co=256
	set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
if !has('nvim')
   set encoding=utf-8
endif

" set Unix as the standard file type
set ffs=unix,dos,mac


" ============================================================================
" Files, backups and undo
" ============================================================================
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" ============================================================================
" Text, tab and indent related
" ============================================================================
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" Show linenumber
set nu

" 1 tab == 3 spaces
set shiftwidth=3
set tabstop=3

" Linebreak on 500 characters
set lbr
set tw=500

" Display color colume
set colorcolumn=80

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Specify the behavior when switching between buffers
try
	set switchbuf=useopen,usetab,newtab
	set stal=2
catch
endtry

" Return to last edit position when opening files
autocmd BufReadPost *
			\ if line("'\"") > 0 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif
" Remember info about open buffers on close
set viminfo^=%

" ============================================================================
" Status line
" ============================================================================
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

