# vim-gshiftf
Implements a way to return to the original file (e.g. using `gF`) after the previous action "goto file" `gf`.

## Installation
Use your favorite package manager to install the plugin. 

The installation does not affect your behavior of `gf` and `gF` unless you remap it to the plugin functions.

## Recommended mappings
Map `gf` and `gF` to the plugin functions:

`nnoremap gf :call gshiftf#GfIn()<CR>`

`nnoremap gF :call gshiftf#GfOut()<CR>`

Of course you can use different mappings (e.g. with prepending `<leader>`) instead (e.g. if you wish to keep the orignal `gF` mapping).

## Troubleshooting
### "My path is not read correctly!"
`gf` reads the `<cfile>` expression. The `isfname` option defines, which ASCII characters are valid file path characters. If you wish to modify the valid characters, add the desired ASCII characters to the `isfname` option (e.g. to include whitespace in your path names, use `:set isfname+=32`). For further reading, we recommend `:help <cfile>` and `:help isfname`.
