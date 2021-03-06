scriptencoding utf-8

set t_Co=256            " set 256 color mode

set synmaxcol=2048      " limit number of chars in line that are colorized

set mousehide           " hide mouse cursor while typing

set laststatus=2        " always display status line

set list
set listchars=tab:»·,trail:·

set background=dark
colorscheme railscasts

if has('gui_running')
    colorscheme base16-atelier-plateau

    set guioptions-=m  " remove menubar from gui interface
    set guioptions-=T  " remove toolbar from gui interface
    set guioptions-=r  " remove right hand scroll bar from gui interface

    if has('mac')
        set guifont=Monaco:h13
    else
        set guifont=Ubuntu\ Mono\ 13
    endif
endif

" use this with 8.0 version
if has('termguicolors')
    set termguicolors
    colorscheme base16-atelier-plateau
endif
