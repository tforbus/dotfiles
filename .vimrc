" Pathogen package manager
execute pathogen#infect()

set t_Co=256
" General -----------------------------------------------------------------

" Enable filetype plugins
filetype plugin on
filetype indent on

" Tree view for e.
let g:netrw_liststyle=3 "tree mode
"let g:netrw_browse_split=4 "open file in previous buffer
"let g:netrw_preview=1 " preview window in vertical split

" No need to put ! to overwrite the save
nmap <leader>w :w!<cr>


" JSHint (npm install -g jshint)
let jshint2_read = 1
let jshint2_save = 1
let jshint2_confirm = 0

" Treat *.ejs as *.html
au BufNewFile,BufRead *.ejs set filetype=html

" Treat *.less as *.css
au BufNewFile,BufRead *.less set filetype=css

" Omnicompletion (auto complete)
"set omnifunc=syntaxcomplete#Complete

" vim-airline wasn't appearing until a split, so this fixes that.
set laststatus=2

" Lazy as hell.
nnoremap ; :

" Can't remap esc to capslock in os x w/o a plugin.
inoremap jj <Esc>

" Remapped ; so get that functionality back.
nnoremap ;; ;

" Code folding ------------------------------------------------------------
" Folding has 6 options: manual/indent/expr/syntax/diff/marker
"set foldmethod=syntax
"set foldlevelstart=1
let javaScript_fold=1
set foldmethod=syntax
set foldnestmax=1
set foldlevelstart=1
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
" set number

" relative numbers in normal mode, absolute in insert.
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
set relativenumber

" Column at 95
" I'm changing from 80 because it seems 95 is still okay for readability.
" en.wikipedia.org/wiki/Characters_per_line
set colorcolumn=95


" Colors and fonts --------------------------------------------------------

" Syntax highlighting
syntax enable

" Theme
set background=dark
"colorscheme molokai
colorscheme solarized
"colorscheme zenburn
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

" Next and previous buffer switching with tab
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>


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
