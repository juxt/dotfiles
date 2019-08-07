set runtimepath+=/home/dominic/src/github.com/juxt/dotfiles/vim/

let g:dirs_of_interest = [
      \ {'directory': '~/.config/nvim',
      \  'prefix': '<Leader>v'}
      \ ]

call juxt#plug#run()
