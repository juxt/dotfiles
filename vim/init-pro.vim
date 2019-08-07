set runtimepath+=~/src/github.com/juxt/dotfiles/vim/

let g:juxt_no_leader = 1 " Set your own leader
let g:juxt_plug_loaded_asyncomplete = 1 " Choose your own completion plugin
let g:juxt_color_loaded = 1 " Disable default color scheme loading

let g:dirs_of_interest = [
      \ {'directory': '~/.config/nvim',
      \  'prefix': '<Leader>v'}
      \ ]

let g:dev_overrides = {
      \ 'SevereOverfl0w/vim-replant': '~/src',
      \ 'clojure-vim/async-clj-omni': '~/src',
      \ 'clojure-vim/vim-jack-in': '~/src',
      \}


function! Local_Jack_In()
  let g:jack_in_injections['com.gfredericks/debug-repl'] =
        \ {'version': '0.0.11-SNAPSHOT',
        \  'middleware': 'com.gfredericks.debug-repl/wrap-debug-repl'}

  let g:jack_in_injections['cider/piggieback']['version'] = '0.4.2-SNAPSHOT'

  let g:jack_in_injections['org.rksm/suitable'] =
        \ {'version': '0.1.2',
        \  'middleware': 'suitable.middleware/wrap-complete'}

endf

call juxt#plug#run()
