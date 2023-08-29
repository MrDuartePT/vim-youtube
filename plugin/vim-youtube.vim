" Play Youtube in Vim

if !(exists(':terminal') && has('nvim'))
  echohl WarningMsg | echomsg 'vim-youtube requires NeoVim with terminal support' | echohl None
endif

if !exists('g:VimYoutube_size')
  let g:VimYoutube_size = 10
endif

if !exists('g:VimYoutube_yewtube')
  let g:VimYoutube_yewtube = 'yt'
endif

fun! s:openyt()
  if !bufexists('Youtube')
    exe g:VimYoutube_size . ' new'
    exe 'terminal' . g:VimYoutube_yewtube
    exe 'file Youtube'
    exe 'startinsert'

    " Close Youtube window on escape
    tnoremap <buffer> <Esc> <C-\><C-n>:close<CR>
  else
    exe g:VimYoutube_size . ' new'
    exe 'buffer Youtube'
    exe 'startinsert'
  endif
endf
command! Youtube call s:openyt()
