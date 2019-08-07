" Update the static files for clojure from it's upstream,
" this includes fixes like indenting #() properly.
call juxt#plug#add('guns/vim-clojure-static')

" This plugin allows you to manipulate sexp (clojure
" parens) in magical ways.
call juxt#plug#add('guns/vim-sexp')

" Unfortunately the default mappings for vim-sexp are hard
" to press (lots of ctrl & alt), but tpope has us covered:
call juxt#plug#add('tpope/vim-sexp-mappings-for-regular-people')
