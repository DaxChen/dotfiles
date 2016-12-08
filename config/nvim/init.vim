" All plugins and plugin specific settings (not including key mappings, see
" keymappings below
source ~/.config/nvim/plugins.vim

" General settings, things that make vim sane (special fancy ones are down below)
source ~/.config/nvim/general.vim

" Anything related to themes or UI
source ~/.config/nvim/style.vim

" Key Mappings (including keys to invoke plugins etc.)
source ~/.config/nvim/keymappings.vim

" Abbreviations
source ~/.config/nvim/abbr.vim


" Section AutoGroups {{{
" auto commands
augroup configgroup
    autocmd!

    " automatically resize panes on resize
    autocmd VimResized * exe 'normal! \<c-w>='
    autocmd BufWritePost .vimrc,.vimrc.local,init.vim source %
    autocmd BufWritePost .vimrc.local source %
    " save all files on focus lost, ignoring warnings about untitled buffers
    autocmd FocusLost * silent! :wa

    " make quickfix windows take all the lower section of the screen
    " when there are multiple windows open
    autocmd FileType qf wincmd J

    autocmd BufNewFile,BufReadPost *.md set filetype=markdown
    let g:markdown_fenced_languages = ['css', 'javascript', 'js=javascript', 'json=javascript', 'stylus', 'html']

    " autocmd! BufEnter * call functions#ApplyLocalSettings(expand('<afile>:p:h'))

    autocmd BufNewFile,BufRead,BufWrite *.md syntax match Comment /\%^---\_.\{-}---$/

    " auto lint on file open and save
    autocmd! BufEnter,BufWritePost * Neomake
augroup END
" }}}
