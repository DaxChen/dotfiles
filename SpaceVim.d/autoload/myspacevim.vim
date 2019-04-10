function! myspacevim#after() abort
  set wrap                    " turn on line wrapping
  set wrapmargin=8            " wrap lines when coming within n characters from side
  set linebreak
  set breakindent             " when wrapping long lines, keep the indentation as previous line

  " j and k on wrapped line easier
  nnoremap j gj
  nnoremap k gk
endfunction
