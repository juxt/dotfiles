" FuGITive is a git wrapper for vim.  The interactive staging features are
" amazing.
call juxt#plug#add('tpope/vim-fugitive')
" The official integration between fugitive and github
call juxt#plug#add('tpope/vim-rhubarb')
" Integration with gitlab
call juxt#plug#add('shumphrey/fugitive-gitlab.vim')

" This list is butched from:
" https://www.reddit.com/r/vim/comments/21f4gm/best_workflow_when_using_fugitive/cgciltz/

" Stage file
nnoremap <Leader>ga :Git add %:p<CR><CR>
" Open status buffer
nnoremap <Leader>gs :Gstatus<CR>
" Commit normally
nnoremap <Leader>gc :Gcommit -v -q<CR>
" Commit and stage current file (if you commit only)
nnoremap <Leader>gt :Gcommit -v -q %:p<CR>
" Open current file in diff mode
nnoremap <Leader>gd :Gdiff<CR>
" Open current file on the index
nnoremap <Leader>ge :Gedit<CR>
" Like `:edit` but against the index
nnoremap <Leader>gr :Gread<CR>
" Like `:write` but against the index (stage file,
" basically)
nnoremap <Leader>gw :Gwrite<CR><CR>
" Open log for current file
nnoremap <Leader>gl :silent! Glog<CR>:bot copen<CR>
" git-grep version of :grep
nnoremap <Leader>gp :Ggrep<Space>
" Rename current buffer and do `git mv`
nnoremap <Leader>gm :Gmove<Space>
" Pass through to git
nnoremap <Leader>gb :Git branch<Space>
nnoremap <Leader>go :Git checkout<Space>
" Pull & push
nnoremap <Leader>gps :Dispatch! git push<CR>
nnoremap <Leader>gpl :Dispatch! git pull<CR>

nnoremap <Leader>gB :.Gbrowse<CR>
