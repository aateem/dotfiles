set nocompatible              " be iMproved
filetype off                  " required!

"##### Plugins management #####
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/vundle'

"100 colorschemes for your pleasure
Plugin 'vim-scripts/Colour-Sampler-Pack'

"indent for python code
Plugin 'hynek/vim-python-pep8-indent'

"syntax checking for python and others
Plugin 'scrooloose/syntastic'

"switch files in projects lika boss
Plugin 'kien/ctrlp.vim'

"sometimes NerdTREE come in handy
Plugin 'scrooloose/nerdtree'

"gotodef, autocompletion etc. all via this plugin
Plugin 'davidhalter/jedi-vim'

"suck it sublime minimap
Plugin 'majutsushi/tagbar'

"git management
Plugin 'tpope/vim-fugitive'

"status line on steroids
Plugin 'bling/vim-airline'

"colorschemes pack
Plugin 'chriskempson/base16-vim'

"templates for code
Plugin 'drmingdrmer/xptemplate'

call vundle#end()
filetype plugin indent on

"---- syntastic settings ----
"default syntax checker
let g:syntastic_python_checkers=['flake8']

"error window will be automatically opened when errors
"are detected, and closed when none are detected
let g:syntastic_auto_loc_list = 1

let g:syntastic_python_flake8_args='--ignore=H302'
"------------------------

"---- NerdTree settings ----
"toggle browser by keys combination
map <C-n> :NERDTreeToggle<CR>

"make NERDTree ignore certain files
let NERDTreeIgnore = ['\.pyc$']
"---------------------------

"---- ctrlp settings ----
"exluding patterns for files
set wildignore+=*.pyc,*.swp

"ignore VCS directory
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

"set current directory
let g:ctrlp_working_path_mode = 'r'

"keys combination for plugin invocation
let g:ctrlp_map = '<c-p>'
"----------------------------

"---- tagbar settings ----
"toggle tagbar
nmap <F6> :TagbarToggle<CR>
"-------------------------
"###############################

"##### Global editor settings #####
syntax on
set number

"amount of spaces inserted upon
"pressing the Tab key
set softtabstop=4

"number of space characters inserted
"for intendation
set shiftwidth=4

"tab width in space characters
set tabstop=8

"convert tabs to spaces
set expandtab

"allow spacing over indent, eol and the start of insert
set backspace=2

"update files which has been modified outside of vim
set autoread

"enchanced commandline completion
set wildmenu

"show what mode you are in
set showmode

"you can move your cursor through every position in text
set virtualedit=all

"display boundary for line length
set cc=80

"trim triling whitespaces on buffer writes
autocmd BufWritePre * :%s/\s\+$//e

"change current working directory for vim
set autochdir

"---- color settings ----
"enable 256 color for vim
set t_Co=256

set background=dark

"use solarized for gvim
""and molokai for console
if has("gui_running")
    colorscheme base16-twilight
else
    colorscheme molokai
endif
"------------------------

"---- highlight cursor position ---
"highlight line cursor pos
set cursorline

"highlight column cursor pos
set cursorcolumn
"----------------------------------

"---- size of vim window by default ----
"number of lines in vim window
set lines=39

"number of columns in vim window
set columns=80
"---------------------------------------

"---- gui settings ----
set guifont=Ubuntu\ Mono\ 13

"remove menu bar
set guioptions-=m

"remove toolbar
set guioptions-=T

"remove right-hand scroll bar
set guioptions-=r
"----------------------

"---- search settings ----

"enable incremental search
set incsearch

"ignore search case
set ignorecase

"match upper case when it is specified
set smartcase

"highlight search results
set hlsearch
"------------------------

"---- status line settings ----
set laststatus=2
set stl=%f\ %m\ %r\ %y\ [Len\ %L:%p%%]\ [Pos\ %02l:%02c\ 0x%O]\ [%3b][%02Bh]\ [Buf\ #%n]
"------------------------------
"###################################
