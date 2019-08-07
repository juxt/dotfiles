" Enable true colour (16 million instead of 256) support
set termguicolors

" Set the clipboard to be the same as the system's
" clipboard, not vim's internal one:
set clipboard+=unnamedplus

" Reduce updatetime, the most visible effect is making
" gitgutter more responsive.  But also controls swap file
" write frequency.
set updatetime=100

" Configure replacements (e.g. :s) to show a preview of
" what's changing
set inccommand=split

set completeopt=menuone,preview,noinsert,noselect

set expandtab " Spaces, not tabs
set shiftwidth=4 " Indent
set softtabstop=4 " Tab key

" Navigating between lines for operations with jk for
" example
set number relativenumber
