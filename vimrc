" ========== Requiered Config ==========

set nocompatible

if filereadable(expand("~/.vim/vundles.vim"))
  source ~/.vim/vundles.vim
endif

" ========== General Config ==========

set autoread      " Reload files if changed outside of vim
set number        " Show line numbers
set ruler         " Show cursor position
set showmode      " Show current mode
set showcmd       " Show incomplete commands
set laststatus=2  " Show statusbar
set visualbell    " No sounds

set ttyfast       " Fast terminal connections
set lazyredraw    " Fast rendering
set wildmenu      " Enhance command-line completion

" ========== Swap Files ==========

set noswapfile
set nobackup
set nowb

" ========== Undo Files ==========

silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" ========== Search Settings ==========

set incsearch     " Highligt result wile typed

" ========== Text Settings ==========

syntax enable
set background=dark
set encoding=utf8
set ffs=unix
set showmatch     " Show matching brackets
set nowrap        " Dont wrap lines

" ========== Indentation Settings ==========

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" ========== Scrolling ==========

set scrolloff=6
set sidescrolloff=15
set sidescroll=1

set shortmess=atI

" ========== Custom Style Settings ==========

hi! link SignColumn LineNr    " Use same colors in sign and line number colums
hi LineNr ctermfg=12          " Customize line nr font color

