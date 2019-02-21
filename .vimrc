" turn on syntax highlighting
syntax on

" what color scheme for highlighting
colorscheme ron

" tabbing
set tabstop=4
set expandtab


set autoindent
set sw=4

" set line numbers
set number
" highlight current line
set cursorline
" autocomplete from command line
set wildmenu
" don't redraw the screen during macros
set lazyredraw
" highlight the matching end bracket
set showmatch

" search as characters are entered
set incsearch
" highlight the searched characters
set hlsearch
" ignore case when searching
set ignorecase
" smartcase  - use case when Caps are involved 
set smartcase
" turn off search highlight with the space key
nnoremap <leader><space> :nohlsearch<CR>

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" highlight last inserted text
nnoremap gV `[v`]

" hide buffers instead of closing them
" allows dirty buffers
set hidden

" tells me how many characters im at
set ruler


set laststatus=2

filetype on

autocmd BufRead,BufNewFile *.tex set spell tw=80
autocmd BufRead,BufNewFile *.txt set spell tw=80
autocmd BufRead,BufNewFile *.md  set spell tw=80

autocmd BufRead,BufNewFile *.csv set nonumber

" don't do tabs = spaces for makefiles
autocmd BufRead,BufNewFile makefile set noexpandtab
autocmd BufRead,BufNewFile Makefile set noexpandtab

