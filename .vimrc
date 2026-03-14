""""""" GENERAL """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable vi-compatibility mode
set nocompatible

" Set internal character encoding to utf-8
set encoding=utf-8

" Enable file type detection
filetype on
" Use file type specific plugins
filetype plugin on
" Use file type specific indentation
filetype indent on

" Don't redraw the screen while executing macros
set lazyredraw
" Indicate a fast terminal connection
set ttyfast

""""""" WINDOW AND BUFFER """"""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax on

" Show line numbers relative to the cursor and the actual line number
" of the current line
set number
set relativenumber

" Show at least one line above and below the cursor
set scrolloff=1

" Wrap lines longer than the window width
set wrap
" Continue wrapped lines visually indented
set breakindent

""""""" STATUS LINE """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Hide the status line
set laststatus=0

""""""" COMMAND BAR """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Show the command bar
set showcmd
" Set the height of the command bar to one line
set cmdheight=1

" Show the current mode
set showmode

" Show the cursor position
set ruler

" Show possible matches when using command-line completion
set wildmenu

""""""" MESSAGES """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Don't shorten the file messages
set shortmess-=f
set shortmess-=i
set shortmess-=l
set shortmess-=n
set shortmess-=x

" Don't display the intro message when starting vim
set shortmess+=I

""""""" HISTORY AND BACKUP """""""""""""""""""""""""""""""""""""""""""""""""""""

" Set how many lines of history to remember
set history=100

" Don't store any information in the ~/.viminfo file
set viminfo=

" Make a backup before overwriting a file, but remove it after the file has
" been successfully written
set writebackup
set nobackup

""""""" EDITING """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Allow backspacing over autoindent, line breaks and the start of insert
set backspace=indent,eol,start

" Insert one space (instead of two) after '.', '?' and '!' with a join command
set nojoinspaces

" Automatically delete all trailing whitespace when saving a file
autocmd BufWritePre * :%s/\s\+$//e

""""""" SEARCHING """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn on regular expressions
set magic

" Ignore case in search patterns unless it contains uppercase characters
set ignorecase
set smartcase

" Search for the pattern while it is being typed
set incsearch

" Searches wrap around the end of the file
set wrapscan

" Highlight matches of the search pattern
set hlsearch

""""""" KEYMAPS """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Clear search highlighting when the escape key is pressed
nnoremap <silent> <Esc> :nohlsearch<CR><Esc>
