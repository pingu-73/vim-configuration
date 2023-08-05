
" plugged folder is at '/Users/<username>/.local/share/nvim/plugged'


:set number
:set relativenumber
:set smarttab
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set softtabstop=4
:set mouse=a
:set wrap
:set splitbelow
:set splitright
:set clipboard=unnamed
:set t_Co=256
:syntax enable
:set foldmethod=indent
:set foldlevel=99




call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline' "Vim Airline
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/jiangmiao/auto-pairs' " Brackets Autocomplete
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'dense-analysis/ale' "to check Syntax/style errors
Plug 'vim-scripts/indentpython.vim'  "indentation for python

Plug 'mattn/emmet-vim' "emmet plugin

Plug 'https://github.com/gruvbox-community/gruvbox' "theme
Plug 'https://github.com/vim-airline/vim-airline-themes' "airline themes

set encoding=UTF-8

call plug#end()

"nnoremap <c-f> <Esc>:NERDTreeFocus<cr> 
nnoremap <Space>f <Esc>:NERDTreeFocus<CR>
nnoremap <Space>r :NERDTreeClose<CR>
nnoremap <Space>n <Esc>:NERDTree<cr>
nnoremap <Space>b <Esc>:NERDTreeToggle<cr>
inoremap <Space>b <Esc>:NERDTreeToggle<cr>

"nnoremap <Space> za

"nnoremap <C-J> <C-W><C-J> "<c-j> move to split below
"nnoremap <C-K> <C-W><C-K> "c-k move to split above
"nnoremap <C-L> <C-W><C-L> "c-l move to split right
"nnoremap <C-H> <C-W><C-H> "c-h move to split left

nmap <F8> :TagbarToggle<CR>
:set completeopt-=preview " For No Previews

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"


"

":colorscheme afterglow
set termguicolors
:colorscheme gruvbox

"
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"


au BufNewFile, BufRead *.py
	\set tabstop=4
	\set softtabstop=4
	\set shiftwidth=4
	\set textwidth=79
	\set expandtab
	\set autoindent
	\set fileformat=UNIX


au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2
