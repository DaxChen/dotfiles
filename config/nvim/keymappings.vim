"""""""""""""""""""""""""""
" General Notes
"""""""""""""""""""""""""""
" * see ":h normal-index" or ":h insert-index" for a list of built-in mappings
" * see ":verbose nmap <C-j>" (for example) for maps setup by plugins or .vimrc

" Custom key bindings
" the leader key is ","
" "jj" or "jk" in insert mode to exit back to normal mode
" ",," to save file

" buffers
" ", + ." switch between current and last buffer (same as <c-^>)
" "[b / ]b" to switch between buffers :bprevious/ :bnext (this is by vim-unimpraired)
" "alt + tab" to :bnext

" windows
" "ctrl + hjkl" to change split (if doesn't work on mac+iterm2+nvim, see https://github.com/neovim/neovim/issues/2048#issuecomment-78045837
" ", + i" to toggle cursor line
" "ctrl + n" to toggle numbering!
" "//" in visual mode to search selected text
" "space" to clear search highlights
" ", + v" to toggle set paste
" ", + l" toggle listchar
" """""""""""""""""" ", + l" to toggle line wrapping


" Plugin key bindings
"""""""""""
" NERDTree
" ", + k" to toggle NERDTree
" ", + y" to open NERDTree and expand to the path of the file in the current buffer

" FZF
" when using fzf, press "ctrl-t" to "tab split"; "ctrl-x" to "split"; "ctrl-v" to "vsplit"
" ", + t" to fzf search files
" ", + r" to fzf search buffers
" ", + C" to fzf search ColorScheme on choose! super cool (@nicknisi)
" there are much more such as autocompleting word, line, path etc, see FZF below

" YankRing
" ", + p" to :YRShow so you can select and paste
" Note: YankRing built in key is <C-p> and <C-n> after paste to change the
" thing you just pasted

" File Beagle (or vim-vinegar)
" "-" to fire the filesystem finder(file-beagle)

" YouCompleteMe
" "Ctrl+Space" to trigger autocomplete anywhere


"""""""""""""""""""""""""""
" start config
"""""""""""""""""""""""""""

"set learder to ","
let mapleader = ","
" insert mode hit jj will go back to normal mode
inoremap jj <ESC>
inoremap jk <ESC>

" haha force to learn hjkl
" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <left> <nop>
" nnoremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>

" j and k on wrapped line easier
nnoremap j gj
nnoremap k gk

" ctrl + hjkl to change split
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" map // in visual mode to search
vnoremap // y/<C-R>"<CR>

" toggle cursor line
nnoremap <leader>i :set cursorline!<cr>

" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" shortcut to save
nmap <leader>, :w<cr>

" switch between current and last buffer
nmap <leader>. <c-^>
" Switch to alternate file
map <M-Tab> :bnext<cr>

" set paste toggle
set pastetoggle=<leader>v

" toggle listchar
nmap <leader>l :set list!<cr>

" clear highlighted search
" noremap <space> :set hlsearch! hlsearch?<cr> " toggle version
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>

" NERDTree
""""""""""""""""""""""""
" Toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
nmap <silent> <leader>y :NERDTreeFind<cr>

let NERDTreeShowHidden=1
let NERDTreeDirArrowExpandable = '▷'
let NERDTreeDirArrowCollapsible = '▼'

" FZF
"""""""""""""""""""""""""""""""""""""
let g:fzf_layout = { 'down': '~25%' }

if isdirectory(".git")
    " if in a git project, use :GFiles
    nmap <silent> <leader>t :GFiles<cr>
else
    " otherwise, use :FZF
    nmap <silent> <leader>t :FZF<cr>
endif

nmap <silent> <leader>r :Buffers<cr>
nmap <silent> <leader>e :FZF<cr>
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)


" use ", + C" to choose color scheme with fzf
" this is so cool! thanks @nicknisi!
nnoremap <silent> <Leader>C :call fzf#run({
\   'source':
\     map(split(globpath(&rtp, "colors/*.vim"), "\n"),
\         "substitute(fnamemodify(v:val, ':t'), '\\..\\{-}$', '', '')"),
\   'sink':    'colo',
\   'options': '+m',
\   'left':    30
\ })<CR>

" search on most recent files(MRU)
command! FZFMru call fzf#run({
\  'source':  v:oldfiles,
\  'sink':    'e',
\  'options': '-m -x +s',
\  'down':    '40%'})

" YankRing
""""""""""""""""
nnoremap <leader>p :YRShow<CR>

" Fugitive Shortcuts
"""""""""""""""""""""""""""""""""""""
nmap <silent> <leader>gs :Gstatus<cr>
nmap <leader>ge :Gedit<cr>
nmap <silent><leader>gr :Gread<cr>
nmap <silent><leader>gb :Gblame<cr>

nmap <leader>m :MarkedOpen!<cr>
nmap <leader>mq :MarkedQuit<cr>
nmap <leader>* *<c-o>:%s///gn<cr>

