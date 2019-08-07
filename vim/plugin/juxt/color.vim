if exists('g:juxt_loaded_color')
    finish
endif

let g:juxt_loaded_color = 1

try
    colorscheme onehalflight
catch /^Vim\%((\a\+)\)\=:E185/
endtry
