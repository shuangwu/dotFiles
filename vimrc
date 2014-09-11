"pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

"color
set t_Co=256
set background=dark
colorscheme solarized

syntax on
filetype on     "automatic file type detection

set paste
set autoread    "wait for file changes by other programs
set ignorecase
set smartcase
set incsearch   "enable incremental search
set hlsearch    "enable search hightlight
set mousehide   "hide the mouse when typing
set ruler
set showmatch     "show matching brackets when typing
set scrolloff=5   "keep at least 5 lines above/below of cursor
set sidescrolloff=5 "keep at least 5 columns left/right of cursor
set visualbell    "visual beep
set wildmenu      "menu has tab completion

" enable mouse in all modes
set mouse=a

nmap <C-N><C-N> :set invnumber<CR>
set laststatus=1

"global editing settings
set autoindent smartindent	" turn on auto/smart indenting
set expandtab			"use spaces, not tabs
set smarttab			"make <tab> and <backspace> smarter
set tabstop=4
set shiftwidth=4  "indents of 4

"use <space> to toggle folding
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
