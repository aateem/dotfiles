" tagbar mapping
nmap <F6> :TagbarToggle<CR>

" ctrlp settings
set wildignore+=*.pyc,*.swp
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_show_hidden = 1
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>

" syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers=["flake8"]
let g:syntastic_go_checkers=['golint', 'govet', 'errcheck']
let g:syntastic_quiet_messages = { "!level": "errors" }

" vim-go settings
let g:go_fmt_fail_silently = 1

let g:go_highlight_functions = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" vim-go requires Vim 7.4.2009 or Neovim 0.3.2, but you're using an older version.
" Please update your Vim for the best vim-go experience.
" If you really want to continue you can set this to make the error go away:
let g:go_version_warning = 0

map <C-n> :NERDTreeToggle<CR>
