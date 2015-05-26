" tagbar mapping
nmap <F6> :TagbarToggle<CR>

" ctrlp settings
set wildignore+=*.pyc,*.swp
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>
