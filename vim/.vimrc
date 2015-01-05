set nocompatible              " be iMproved
filetype off                  " required!

"##### Plugins management #####
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'                      " let Vundle manage Vundle
Plugin 'vim-scripts/Colour-Sampler-Pack'    "100 colorschemes for your pleasure
Plugin 'hynek/vim-python-pep8-indent'       "indent for python code
Plugin 'davidhalter/jedi-vim'               "gotodef, autocompletion etc. all via this plugin
Plugin 'tpope/vim-fugitive'                 "git management
Plugin 'bling/vim-airline'                  "status line on steroids
Plugin 'chriskempson/base16-vim'            "colorschemes pack
Plugin 'drmingdrmer/xptemplate'             "templates for code

Plugin 'majutsushi/tagbar'                  "suck it sublime minimap
nmap <F6> :TagbarToggle<CR>

Plugin 'scrooloose/syntastic'               "syntax checking for python and others
let g:syntastic_python_checkers=['flake8']
let g:syntastic_auto_loc_list = 1           "automatically toggle quickfix window
let g:syntastic_python_flake8_args='--ignore=H302'

Plugin 'kien/ctrlp.vim'                     "switch files in projects lika boss
set wildignore+=*.pyc,*.swp                 "exluding patterns for files
let g:ctrlp_working_path_mode = 'r'         "set current directory
let g:ctrlp_map = '<c-p>'                   "keys combination for plugin invocation
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

Plugin 'scrooloose/nerdtree'                "sometimes NerdTREE come in handy
let NERDTreeIgnore = ['\.pyc$']             "make NERDTree ignore certain files
map <C-n> :NERDTreeToggle<CR>

call vundle#end()
filetype plugin indent on

"##### Global editor settings #####
syntax on

set lines=39                                "number of lines in vim window
set columns=80                              "number of columns in vim window

set number                                  "enable line numbering
set cc=80                                   "display boundary for line length
set cursorline                              "highlight line cursor pos
set cursorcolumn                            "highlight column cursor pos
set virtualedit=all                         "you can move your cursor through every position in text

set incsearch                               "enable incremental search
set ignorecase                              "ignore search case
set smartcase                               "match upper case when it is specified
set hlsearch                                "highlight search results

set softtabstop=4                           "amount of spaces inserted upon pressing the Tab key
set shiftwidth=4                            "number of space characters inserted for intendation
set tabstop=8                               "tab width in space characters
set expandtab                               "convert tabs to spaces

set backspace=2                             "allow spacing over indent, eol and the start of insert

set autoread                                "update files which has been modified outside of vim
set autochdir                               "change current working directory for vim

set wildmenu                                "enchanced commandline completion

set showmode                                "show what mode you are in


set t_Co=256                                "enable 256 color for vim
set background=dark

if has("gui_running")                       "set colorscheme for gui and terminal
    colorscheme base16-twilight
else
    colorscheme molokai
endif

set guifont=Ubuntu\ Mono\ 13                "set font for gui interface
set guioptions-=m                           "remove menu bar from gui interface
set guioptions-=T                           "remove toolbar from gui interface
set guioptions-=r                           "remove right-hand scroll bar from gui interface

autocmd BufWritePre * :%s/\s\+$//e          "trim triling whitespaces on buffer writes

set laststatus=2                            "always display status line
"format of status line
set stl=%f\ %m\ %r\ %y\ [Len\ %L:%p%%]\ [Pos\ %02l:%02c\ 0x%O]\ [%3b][%02Bh]\ [Buf\ #%n]

"functions
function ToggleSpell()                      "toggle spell checking
    if !exists("b:isChecked") || !b:isChecked
        setlocal spell spelllang=en_us
        let b:isChecked = 1
    else
        set nospell
        let b:isChecked = 0
    endif
endfunction

"key bindings
nmap <F5> :call ToggleSpell()<CR>
