syntax on
filetype plugin indent on

set nocompatible    " be vImproved :)

set vb              " set visual bell

set undolevels=2048

set splitbelow      " put new window below when horizontal splitting
set splitright      " put new window right when vertical splitting

set backup          " backups of files

" set backup and swap storing dirs to one well reachable and manageable
" location
if !isdirectory($VIMDIR . '/swap')
    call mkdir($VIMDIR . '/swap', 'p')
endif
if !isdirectory($VIMDIR . '/backup')
    call mkdir($VIMDIR . '/backup', 'p')
endif

set directory=$VIMDIR/swap
set backupdir=$VIMDIR/backup

set smarttab        " align tab instead of just inserting 4 spaces

set incsearch       " enable incremental search
set ignorecase      " ignore search case
set smartcase       " match upper case when it is specified
set hlsearch        " highlight search results

set number          " enable line numbering
set cursorline      " highlight line cursor pos
set cursorcolumn    " highlight column cursor pos
set virtualedit=all " you can move your cursor through every position in text

set backspace=2     " allow spacing over indent, eol and the start of insert

set autoread        " update files which has been modified outside of vim
set autochdir       " change current working directory for vim

set wildmenu        " enchanced commandline completion

set showmode        " show what mode you are in

set expandtab       " replace tabs with spaces
set tabstop=4       " number of spaces to replace tab
set shiftwidth=4    " number of spaces inserted for intendation

set encoding=utf-8
