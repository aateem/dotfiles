" aroma's (a.k.a aateem and fuzzy_finder) .vimrc

" a main configuration principles is taken from my friend's,
" ikalnitsky, dotfiles repository (https://github.com/ikalnitsky/dotfiles)


let $VIMDIR=fnamemodify($MYVIMRC, ':h') . '/.vim'

" source separate configuration files in this order to avoid errors with
" using of not yet available stuff
source $VIMDIR/vim.d/bundle.vim
source $VIMDIR/vim.d/bundle_settings.vim
source $VIMDIR/vim.d/general.vim
source $VIMDIR/vim.d/appearance.vim
source $VIMDIR/vim.d/additional_settings.vim
