" Pathogen package manager
execute pathogen#infect()

set t_Co=256
" General -----------------------------------------------------------------

" Enable filetype plugins
filetype plugin on
filetype indent on

" No need to put ! to overwrite the save
nmap <leader>w :w!<cr>

" JSHint!
let g:syntastic_javascript_checkers=['jshint']

" No HTML validation because it's annoying
let g:syntastic_mode_map={'mode': 'active', 'passive_filetypes': ['html']}

" Treat *.ejs as *.html
au BufNewFile,BufRead *.ejs set filetype=html

" Treat *.less as *.css
au BufNewFile,BufRead *.less set filetype=css

" Omnicompletion (auto complete)
set omnifunc=syntaxcomplete#Complete

" vim-airline wasn't appearing until a split, so this fixes that.
set laststatus=2

" Lazy as hell.
nnoremap ; :

" Can't remap esc to capslock in os x w/o a plugin.
inoremap jj <Esc>

" Code folding ------------------------------------------------------------
" Folding has 6 options: manual/indent/expr/syntax/diff/marker
"set foldmethod=syntax
"set foldlevelstart=1
"let javaScript_fold=1
set foldmethod=manual
set foldnestmax=100
set nofoldenable "Don't fold by default
set foldlevel=1

" Interface ---------------------------------------------------------------

" Always show current position
set ruler

" Current line highlighted
set cursorline

" Highlight search results
set hlsearch

" Incremental search
set incsearch

" Allow regular expressions
set magic

" Show matching brackets when cursor is over them
set showmatch

" How many 0.1ths of a second to blink when matching
set mat=2

" Show line numbers
set number

" Column at 80
set colorcolumn=80


" Colors and fonts --------------------------------------------------------

" Syntax highlighting
syntax enable

" Theme
set background=dark
"colorscheme molokai
colorscheme zenburn
set guifont=Menlo\ Regular:h14

" Text, tabs, etc. --------------------------------------------------------

" Spaces instead of tabs
set expandtab

" Smart tabs? idk
set smarttab

" Tab is 4 spaces
set shiftwidth=4
set tabstop=4

" Tabs 2 in JavaScript & HTML
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ejs setlocal ts=2 sts=2 sw=2
autocmd Filetype css setlocal ts=2 sts=2 sw=2

" Indents
set ai " auto
set si " smart
set wrap " wrap lines

" Share clipboard
set clipboard=unnamed

" Moving around -----------------------------------------------------------

" Remapping moving keys to ctrl+key (no need to escape)
" This is for navigating between splits
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Mouse!
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" Tabs! leader is set to \ unless you change it.
map <leader>tw :tabnew<cr>
map <leader>tp :tabp<cr>
map <leader>tn :tabnext<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Opens a new tab with the same path as the current file
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
