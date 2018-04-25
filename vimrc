"pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

"color
set t_Co=256
set background=dark
colorscheme solarized

syntax on
filetype on     "automatic file type detection
filetype plugin indent on "enable loading indent file for filetype

set paste
set autoread    "wait for file changes by other programs
set ignorecase
set smartcase
set incsearch   "enable incremental search
set hlsearch    "enable search hightlight
set mousehide   "hide the mouse when typing
set ruler       "show cusor position
set cursorline
set autochdir   "change dir wrt current file
set showmatch     "show matching brackets when typing
set scrolloff=5   "keep at least 5 lines above/below of cursor
set sidescrolloff=5 "keep at least 5 columns left/right of cursor
set visualbell    "visual beep
set wildmenu      "menu has tab completion

" toggle paste with formatting
set pastetoggle=<F10>

" save undofile between vim session
if version >= 703
    set undofile
    set undodir=$HOME/.tmp//,.
endif

" file with ~ postfix
set backupdir=$HOME/.tmp//,.
" swap file
set directory=$HOME/.tmp//,.

" encoding setting
set encoding=utf-8
" termencoding default to encoding
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" enable mouse in all modes
set mouse=a
" toggle showing line number with ctrl-n ctrl-n
nmap <C-N><C-N> :set invnumber<CR>
" always show status bar
set laststatus=2
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ (%c,%l/%L)%)
" allow backspace key to delete
set backspace=indent,eol,start

"global editing settings
set autoindent smartindent  " turn on auto/smart indenting
set expandtab               "use spaces, not tabs
set smarttab                "make <tab> and <backspace> smarter
set tabstop=4
set shiftwidth=4            "indents of 4

" highlight tabs and trailing spaces
set list
set listchars=tab:>-,trail:-,extends:>,precedes:<

"use <space> to toggle folding
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

""""""""""
" plugins
""""""""""
" enable vim-indent-guides by default
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=234

" use flake8 in syntastic
let g:syntastic_python_checkers = ['flake8']
"let g:syntastic_python_flake8_args = '--ignore="E501,E302,E261,E701,E241,E126,E127,E128,W801"'
