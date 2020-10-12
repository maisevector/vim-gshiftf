function! gshiftf#GfIn()
    let g:gshiftf_filestack = g:gshiftf_filestack + [expand("%")]
    let g:gshiftf_linestack = g:gshiftf_linestack + [line(".")]
    execute "normal! gf"
endfunction

function! gshiftf#GfOut()
    execute ":edit " . g:gshiftf_filestack[-1]
    execute ":" . g:gshiftf_linestack[-1]
    let g:gshiftf_filestack = g:gshiftf_filestack[0:-2]
    let g:gshiftf_linestack = g:gshiftf_linestack[0:-2]
endfunction
