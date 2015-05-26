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
