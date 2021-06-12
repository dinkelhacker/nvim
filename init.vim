call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'lifepillar/vim-gruvbox8'


" Initialize plugin system
call plug#end()
filetype plugin on

let g:UltiSnipsExpandTrigger='<alt>'
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]

nnoremap <C-f> :Rg<Cr>
nnoremap <C-p> :FZF<Cr>
nmap <Leader>] :bn<CR>
nmap <Leader>[ :bp<CR>
nmap <Leader>bl :Buffers<CR>

set mouse=a
set tabstop=2
set expandtab
set shiftwidth=2

syntax on
set completeopt=menuone
set termguicolors
colorscheme gruvbox8
set background=dark
set cursorline
set hidden
set cmdheight=1
set laststatus=2
set number
set signcolumn=yes
set title
set wrap
setlocal wrap


let g:gruvbox_transp_bg = 1
let g:gruvbox_italicize_strings = 0


" let buffers be clickable
let g:lightline#bufferline#clickable=1
let g:lightline#bufferline#shorten_path=1
let g:lightline#bufferline#min_buffer_count=1

let g:lightline = {
\  'colorscheme': 'jellybeans',
\  'active': {
\    'left': [ [], [], [ 'relativepath' ] ],
\    'right': [ [], [], [ 'lineinfo', 'percent' ] ]
\  },
\  'inactive': {
\    'left': [ [], [], [ 'relativepath' ] ],
\    'right': [ [], [], [ 'lineinfo', 'percent' ] ]
\  },
\  'subseparator': {
\    'left': '', 'right': ''
\  },
\  'tabline': {
\    'left': [ ['buffers'] ],
\    'right': [ [] ]
\  },
\  'tabline_separator': {
\    'left': "", 'right': ""
\  },
\  'tabline_subseparator': {
\    'left': "", 'right': ""
\  },
\  'component_expand': {
\    'buffers': 'lightline#bufferline#buffers'
\  },
\  'component_raw': {
\    'buffers': 1
\  },
\  'component_type': {
\    'buffers': 'tabsel'
\  }
\}

source ~/.config/nvim/coc.vim
