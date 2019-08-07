if exists('g:juxt_no_leader')
    finish
endif

" Leader keys are important, because you bang on them all
" day They go first so that mappings after this point
" respect them
let mapleader=' '
let maplocalleader=','
