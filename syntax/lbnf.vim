" Vim syntax file
" Language: LBNF
" Add this to your vimrc "au bufreadpre,bufnewfile *.cf set ft=lbnf" 
" and put this file in ~/.vim/syntax/
" Author: Jim Persson <di2peji [AT] student [DOT] chalmers [dot] se>

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn region lbnfList   start=+\[+ end=+\]+ 
syn match lbnfStatement /^entrypoints/
syn match lbnfStatement /^comment/
syn match lbnfStatement /^token/
syn match lbnfComment   /^--.*$/
syn match lbnfLabel     /^\(internal \)\{,1}[A-Za-z\(\):\[\]_]*\./ nextgroup=lbnfClass
syn match lbnfClass     /[A-Za-z0-9_\[\]]*\_s*::=/ contains=lbnfEquals
syn match lbnfIdent     / [a-zA-Z0-9_]\+/ contained
syn match lbnfEquals    /::=/ contained
syn match lbnfChar      /'.'/ 
syn match lbnfSymbols   /;$/
syn region lbnfString start=+"+ end=+"+
syn keyword lbnfTypes digit digit+ char letter

hi link lbnfStatement Include
hi link lbnfString    String
hi link lbnfChar      String
hi link lbnfClass     Identifier
hi link lbnfLabel     Statement
hi link lbnfComment   Comment
hi link lbnfEquals    Define
hi link lbnfSymbols   Define
hi link lbnfList      Delimiter
hi link lbnfTypes     Type
hi link lbnfIdent     NONE
