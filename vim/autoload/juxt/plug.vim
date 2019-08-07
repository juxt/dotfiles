function! s:get_function(name) abort
  try
    return function(a:name)
  catch /.*/
    return
  endtry
endf

function! s:is_func(x) abort
  return type(a:x) == v:t_func
endf

function! s:plugin_hook(prefix) abort
  let name = substitute(g:dein#plugin.normalized_name, '-', '_', 'g')
  let F = s:get_function('Hook_'.a:prefix.'_'.name)
  if !s:is_func(F)
    return
  endif

  call F()
endf

function! juxt#plug#add_hooks() abort
  call dein#set_hook([], 'hook_add', function('s:plugin_hook', ['add']))
  call dein#set_hook([], 'hook_post_source', function('s:plugin_hook', ['post_source']))
endf

let s:dein_cache = stdpath('cache') . '/juxt-dein'


function! juxt#plug#begin() abort
  let dein_dir = s:dein_cache . '/repos/github.com/Shougo/dein.vim'
  if !isdirectory(expand(dein_dir))
    !curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > /tmp/${USER}-installer.sh
    echo system('read dein_dir;sh /tmp/${USER}-installer.sh $dein_dir', s:dein_cache)
  endif

  execute 'set runtimepath+='.dein_dir

  " Second parameter to dein#begin where plugins may be added from so it may
  " auto-recache.
  call dein#begin(s:dein_cache, add(globpath(&rtp, 'juxt-plugin/*.vim', 1, 1), $MYVIMRC))
  call dein#add(dein_dir)
endf

function! juxt#plug#end() abort
  call dein#end()

  if dein#check_install()
    echom 'Need to run dein#install()'
  endif

  augroup PostSource
    autocmd!
    autocmd VimEnter * call dein#call_hook('post_source')
  augroup END
  call juxt#plug#add_hooks()

  filetype plugin indent on
  syntax enable
endf

function! juxt#plug#run() abort
  runtime! config/*.vim
  call juxt#plug#begin()
  runtime! juxt-plugin/*.vim
  call juxt#plug#end()
endf

function! juxt#plug#add(name, ...) abort
  let dev_overrides = get(g:, 'dev_overrides', {})
  let name = a:name
  if has_key(dev_overrides, a:name)
    let dev_override = dev_overrides[a:name]
    if dev_override ==# '~/src'
      let name = '~/src/github.com/'.name
    else
      let name = dev_override
    endif
  endif
  call call('dein#add', [name] + a:000)
endf
