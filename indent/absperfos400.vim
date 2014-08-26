" Vim indent file
" Language: AbsPerfOS400 scripts
" Maintainer: https://github.com/Taywee
" Latest Revision: 2014 August 26
"
if exists("b:did_indent")
    finish
endif
let b:did_indent = 1

setlocal indentexpr=GetOS400Indent()

setlocal indentkeys+=0=]$

setlocal autoindent

if exists("*GetOS400Indent")
    finish
endif

function! GetOS400Indent()
    " Find a non-blank line above the current line.
    let prevlnum = prevnonblank(v:lnum - 1)

    " Hit the start of the file, use zero indent.
    if prevlnum == 0
        return 0
    endif

    " Add a 'shiftwidth' after lines that start a block:
    " 'function', 'if', 'for', 'while', 'repeat', 'else', 'elseif', '{'
    let line = getline(v:lnum)
    let ind = indent(prevlnum)
    let prevline = getline(prevlnum)

    let midx = match(prevline, '\$\[.*\]\$')
    if midx != -1
        return ind
    endif

    let midx = match(prevline, '\$\[')
    if midx != -1
        if synIDattr(synID(prevlnum, midx + 1, 1), "name") != "comment" && prevline != ']$'
            let ind = ind + &shiftwidth
        endif
    endif

    let midx = match(prevline, '\S\+\s*\]\$')
    if midx != -1
        if synIDattr(synID(prevlnum, midx + 1, 1), "name") != "comment" && prevline != ']$'
            let ind = ind - &shiftwidth
        endif
    endif

    " Subtract a 'shiftwidth' on end, else (and elseif), until and '}'
    " This is the part that requires 'indentkeys'.
    let midx = match(line, '\]\$')
    if midx != -1
        let ind = ind - &shiftwidth
    endif

    return ind
endfunction
