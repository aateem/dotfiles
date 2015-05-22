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

set autoindent      " inherit current intendation in the next line
set softtabstop=4   " always insert spaces instead of tabs
set shiftwidth=4    " shift lines by 4 spaces
set tabstop=4       " tab width in space characters
set smarttab        " align tab instead of just inserting 4 spaces
set expandtab       " insert spaces instead tab

set incsearch       " enable incremental search
set ignorecase      " ignore search case
set smartcase       " match upper case when it is specified
set hlsearch        " highlight search results

set number          " enable line numbering
set cc=80           " display boundary for line length
set cursorline      " highlight line cursor pos
set cursorcolumn    " highlight column cursor pos
set virtualedit=all " you can move your cursor through every position in text

set backspace=2     " allow spacing over indent, eol and the start of insert

set autoread        " update files which has been modified outside of vim
set autochdir       " change current working directory for vim

set wildmenu        " enchanced commandline completion

set showmode        " show what mode you are in
