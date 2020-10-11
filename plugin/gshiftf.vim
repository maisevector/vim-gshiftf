function! gshiftf#GfIn()
    let g:gshiftf_filestack = g:gshiftf_filestack + [expand("%")]
    execute ":edit " . expand("<cfile>")
endfunction

function! gshiftf#GfOut()
    execute ":edit " . g:gshiftf_filestack[-1]
    let g:gshiftf_filestack = g:gshiftf_filestack[0:-2]
endfunction
