" Vim filetype detect
" Language:    LBNF

au BufRead,BufNewFile *.cf set filetype=lbnf
au BufReadPost *.cf set syntax=lbnf
au BufReadPost *.*bnf set syntax=lbnf
