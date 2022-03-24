" Vim syntax file
" Language:  Hazure
" Filenames: *.hz *.hazure

if exists("b:current_syntax") && b:current_syntax == "hazure"
    finish
endif

set iskeyword=a-z,A-Z,_

" Todos
syn keyword hazureTodos TODO XXX FIXME NOTE

" Language keywords
syn keyword hazureKeywords  let mut fun do end if then else case of return pub
syn keyword hazureTypes     int string bool void vec_int vec_string vec_bool
syn match   hazureIntrinsic "@[^()]*"

" Comments
syn region  hazureCommentLine  start="--" end="$"  contains=hazureTodos
syn region  hazureCommentBlock start="-{" end="}-" contains=hazureTodos

" Strings
syn region  hazureString       start=/\v"/  skip=/\v\\./ end=/\v"/

" Set hilighting
hi def link hazureTodos        Todo
hi def link hazureKeywords     Keyword
hi def link hazureTypes        Type
hi def link hazureCommentLine  Comment
hi def link hazureCommentBlock Comment
hi def link hazureString       String

let b:current_syntax="hazure"
