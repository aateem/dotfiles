autocmd BufWritePre * :%s/\s\+$//e  " trim trailing whitespaces on buffer's write

setlocal completeopt=menu,longest

let python_highlight_all=1

" toggle spelling checking
function ToggleSpell()
    if !exists("b:isChecked") || !b:isChecked
        setlocal spell spelllang=en_us
        let b:isChecked = 1
    else
        set nospell
        let b:isChecked = 0
    endif
endfunction
nmap <F5> :call ToggleSpell()<CR>

"simplified windows navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"python file settings
au BufNewFile,BufRead python
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
    \ set cc=80

" go mappings
au FileType go set nolist
au FileType go nmap <leader>gr <Plug>(go-run)
au FileType go nmap <Leader>gc <Plug>(go-doc)
au FileType go nmap <Leader>gb <Plug>(go-build)
