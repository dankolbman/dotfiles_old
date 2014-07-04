" Dan Kolbman .vimrc Summer 2014

" Syntax highlighting
syntax on
"colorscheme solarized
colorscheme desert
" Tabstop
set tabstop=2
" Make indents follow tabbing
set sw=2
" Make tabs space characters
set expandtab
" Line numbers
set number
" Bar on column 80
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=0 guibg=#000000
"002b36
set cursorline


" -- Searching --
" Highlight results
set hlsearch
" Search while typing
set incsearch

" Don't skip over wraps
nnoremap j gj
nnoremap k gk

