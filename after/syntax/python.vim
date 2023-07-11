" Disable current syntax temporarily.
let saved_syntax = b:current_syntax
unlet! b:current_syntax

" Load SQL syntax
syntax include @SQL syntax/sql.vim

" Restore original syntax
let b:current_syntax = saved_syntax
unlet! saved_syntax

syntax region sqlSnippet matchgroup=pythonTripleQuotes start=/'''--sql/ end=/'''/ contains=@SQL keepend
syntax region sqlSnippet matchgroup=pythonTripleQuotes start=/f'''--sql/ end=/'''/ contains=@SQL keepend
syntax region sqlSnippet matchgroup=pythonTripleQuotes start=/r'''--sql/ end=/'''/ contains=@SQL keepend
syntax region sqlSnippet matchgroup=pythonTripleQuotes start=/fr'''--sql/ end=/'''/ contains=@SQL keepend
syntax region sqlSnippet matchgroup=pythonTripleQuotes start=/"""--sql/ end=/"""/ contains=@SQL keepend
syntax region sqlSnippet matchgroup=pythonTripleQuotes start=/f"""--sql/ end=/"""/ contains=@SQL keepend
syntax region sqlSnippet matchgroup=pythonTripleQuotes start=/r"""--sql/ end=/"""/ contains=@SQL keepend
syntax region sqlSnippet matchgroup=pythonTripleQuotes start=/fr"""--sql/ end=/"""/ contains=@SQL keepend
