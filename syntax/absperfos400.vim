" Vim syntax file
" Language: AbsPerfOS400 scripts
" Maintainer: https://github.com/Taywee
" Latest Revision: 2014 August 26

if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "absperfos400"

syn keyword basicLanguageKeywords CALL LOCAL
syn keyword repeat DO FOR WHILE
syn keyword function FUN FUNC
syn keyword conditional IF THEN ELSE
syn keyword commandKeywords as400 ask bye commandcall db defun dict dq eval exit fetch fetchxls ftp gensh help history h ifs interpret include job joblist lifo monitor msg msgq outq printer put rs savf server session sess spoolf spoolflist string system test tn5250 tuple usage user userlist spoollist

syn match option '-\S\+'
syn match tuple '@\S\+'

syn match comment "#.*$"
syn match shebang "^#!.*$"

syn match toOrFrom '-to' nextgroup=tuple skipwhite
syn match toOrFrom '-from' nextgroup=tuple skipwhite

syn region block start="\$\[" end="\]\$" fold transparent

syn region string start="\${" end="}\$"

hi def link toOrFrom Special
hi def link option Label
hi def link basicLanguageKeywords Keyword
hi def link repeat Repeat
hi def link function Keyword
hi def link conditional Conditional
hi def link commandKeywords Statement
hi def link tuple Identifier
hi def link comment Comment
hi def link shebang SpecialComment
hi def link string String

