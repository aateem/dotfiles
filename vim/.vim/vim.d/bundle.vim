filetype off

if !isdirectory($VIMDIR . '/bundle')
    call mkdir($VIMDIR . '/bundle', 'p')
    cd $VIMDIR/bundle
    if executable('git')
        !git clone https://github.com/gmarik/Vundle.vim.git
    else
        echo 'WARNING: Git is missing! Cannot pull Vundle plugin.'
    endif
endif

set rtp+=$VIMDIR/bundle/Vundle.vim/

call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'chriskempson/base16-vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jpo/vim-railscasts-theme'
call vundle#end()
