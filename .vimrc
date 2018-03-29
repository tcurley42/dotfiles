"------------------------------------------------------------------------------
"                        Main Configurations
"------------------------------------------------------------------------------


set secure			" Security!

set title			" Sets the title of window terminal
set nocompatible		" Behave more vim-like
let mapleader = ","		" Set the mapleader

syntax on			" Show syntax highlighting
set number			" Show numbering on the left
set relativenumber
set ruler			" Show cursor position all the time

set bs=2			" Allow backspacing over everything in insert mode
set ai				" Always set auto indenting on
set history=50			" Keep 50 lines of cmd line history

set incsearch			" Turn on incremental search
set ignorecase			" Ignore case when searching
set smartcase			" Intelligent case searching
set hlsearch			" Highlight searches

set smarttab			" Inserts spaces for tabs
set tabstop=2			" Number of spaces a tab counts for
set shiftwidth=2		" Number of spaces to use for indents
set shiftround			" Round to multiples of shift width
set expandtab			" Expand tabs to spaces
set autoindent			" Auto indent new lines WRT current line

set nowrap			" Disable wrapping
set textwidth=80		" Max width of text to be 80 chars
set formatoptions-=t		" Set formatting options

set showmatch			" Highlight matching brackets
set matchpairs+=<:>		" Include anger brackers

set showmode			" Show current mode in status line
set showcmd			" Show current command in status line
set laststatus=2		" Always have a status line

set splitright			" Split vertically to the right
set splitbelow			" Split horizontally to the bottom

set lazyredraw			" Don't redraw when macros are running
set scrolloff=4			" Start scrolling at this number of lines from bottom
set ttyfast			" Faster tty connection
set noerrorbells		" No error bells
set shortmess+=r		" Use shorter messages in status line
set nostartofline		" Keep cursor in same column if possible
set autowrite			" Automatically write the file before some commands

set spell spl=en_us		" Set spelling locale
set nospell			" Turn spell check off

filetype on			" Enable filetype detection
filetype indent on		" Use filetype-specific indentation
filetype plugin on		" Use filetype-specific plugins

" Open help in new tabs
cabbrev help tab help

"------------------------------------------------------------------------------
"				General Mappings
"------------------------------------------------------------------------------

" C-k goes to the next tab
" C-j goes to the previous tab
nmap <C-J> :tabnext<CR>
nmap <C-K> :tabprev<CR>
imap jj <Exc>
imap <C-d> <esc>ddi

" Stay in visual mode when indenting
vnoremap > >gv
vnoremap < <gv

" Set spell check
nmap <Leader>s :set spell!

" Easily edit vimrc
nnoremap <Leader>ev :vsplit $MYVIMRC<cr>
nnoremap <Leader>sv :source $MYVIMRC<cr>

"------------------------------------------------------------------------------
"        Plugin Configuration
"------------------------------------------------------------------------------

call plug#begin()

" List plugins using Plug
Plug 'sjl/badwolf'
Plug 'junegunn/fzf'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

colorscheme badwolf   " Default color scheme

