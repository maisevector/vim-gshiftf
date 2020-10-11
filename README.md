# vim-gshiftf
Implements a return stack to return to the original file using gF after the action gf (open file).

## Installation
Use your favorite package manager to install the plugin.

## Recommended mappings
Map `gf` and `gF` to the plugin functions:

`nnoremap gf :call gshiftf#GfIn()<CR>`

`nnoremap gF :call gshiftf#GfOut()<CR>`

Of course you can use different mappings (e.g. with prepending `<leader>`) instead.

## Troubleshooting
### "My path is not read correctly!"
`gf` reads the `<cfile>` expression. The settings of `isfname` define, which ASCII characters are valid file path characters. If you wish to modify the valid characters, add the desired ASCII characters (e.g. to include whitespace, use `:set isfname+=32`). For further reading, we recommend `:help <cfile>` and `:help isfname`
