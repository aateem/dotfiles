autocmd BufWritePre * :%s/\s\+$//e  " trim trailing whitespaces on buffer's write

setlocal completeopt=menu,longest

let python_highlight_all=1
