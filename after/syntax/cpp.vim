" Disable current syntax temporarily.
let saved_syntax = b:current_syntax
unlet! b:current_syntax

" Load SQL syntax
syntax include @SQL syntax/sql.vim

" Restore original syntax
let b:current_syntax = saved_syntax
unlet! saved_syntax

syntax region sqlSnippet matchgroup=cppRawStringDelimiter start=/R"(-sql/ end=/)";/ contains=@SQL keepend
