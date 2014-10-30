" Vim syntax file
" Language: AbsPerfOS400 scripts
" Maintainer: https://github.com/Taywee
" Latest Revision: 2014 August 26

if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "absperfos400"

syn keyword basicKeywords CALL LOCAL TASK BREAK
syn keyword repeat DO FOR in IN WHILE
syn keyword function FUN FUNC
syn keyword conditional IF THEN ELSE
syn keyword commandKeywords as400 ask bye commandcall db defun dict dpoint dq eval exit fetchxls ftp gensh help histlog history h ifs interpret include jmx job joblist lifo list monitor msg msgq objlist outq printer put rs savf server session sess spoolf spoolflist string system sysval test thread tn5250 tuple usage user userlist
syn keyword deprecatedKeywords fetch spoollist
syn keyword constants AUTOSTART BATCH INTERACTIVE SUBSYSTEM_MONITOR SPOOLED_READER SYSTEM SPOOLED_WRITER SCPF_SYSTEM ALL

syn match number '\<[0-9]\+\>'
syn match number '\<0x[0-9a-fA-F]\+\>'
syn match number '\<[0-9]\+\.[0-9]\+\>'
syn match number '\<[0-9]\+e[0-9]\+\>'
syn match number '\<[0-9]\+\.[0-9]\+e[0-9]\+\>'

syn match option '-\S\+'
syn match tuple '@\S\+'


syn match comment "#.*$"
syn match shebang "^#!.*$"

syn match todo "\ctodo" containedin=comment contained

syn match bang "!\s*[0-9]\+"


syn match toOrFrom '\<-to\>' nextgroup=tuple skipwhite
syn match toOrFrom '\<-from\>' nextgroup=tuple skipwhite

syn region block start='\$\[' end='\]\$' fold transparent

syn region string start='\${' end='}\$'

syn region funcArgs start='(' end=')'

hi def link toOrFrom Special
hi def link option Label
hi def link basicKeywords Keyword
hi def link repeat Repeat
hi def link function Keyword
hi def link conditional Conditional
hi def link commandKeywords Statement
hi def link deprecatedKeywords Error
hi def link tuple Identifier
hi def link comment Comment
hi def link todo Todo
hi def link shebang SpecialComment
hi def link bang Special
hi def link string String
hi def link number Number
hi def link constants Constant

