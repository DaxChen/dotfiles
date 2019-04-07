" General Notes
" * see ":h normal-index" or ":h insert-index" for a list of built-in mappings
" * see ":verbose nmap <C-j>" (for example) for maps setup by plugins or .vimrc
"
" the leader key is ","
" use , + l to toggle line wrapping
" use , + w to quickly split window vertically
" use ctrl + n to toggle numbering!
" use ctrl + p to fire the ctrlp finder
" use - to fire the filesystem finder(file-beagle)

set nocompatible            " we're using Vim, not Vi


"===============================================================================
" General Vim settings
"===============================================================================
let mapleader = ","
"""""""""""""""""""""""""""
" haha force to learn hjkl
"""""""""""""""""""""""""""
" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <left> <nop>
" nnoremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>
" nnoremap j gj
" nnoremap k gk
" " map f1 to esc...
" inoremap <F1> <ESC>
" nnoremap <F1> <ESC>
" vnoremap <F1> <ESC>
" insert mode hit jj will go back to normal mode
inoremap jj <ESC>

" mappings to split file
" leader + w to virtical split
nnoremap <leader>w <C-w>v<C-w>l
" ctrl + hjkl to change
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" map ctrlp to leader t
" nnoremap <Leader>t <C-p>

" map NERDTree to leader n
map <Leader>t :NERDTreeToggle<CR>

" map // in visual mode to search
vnoremap // y/<C-R>"<CR>

" save on losing focus
au FocusLost * :wa

syntax on
set nu
set autoindent
set hidden
set ruler "Always show current position
set scrolloff=5 " padding top and bottom when scrolling
" set mouse=nicr " enable scroll on iterm... hold option key to select text

"Set to auto read when a file is changed from the outside
set autoread

" use space rather than tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" see your <leader> key appear
set showcmd

" reselect the text that was just pasted! leader + v
nnoremap <leader>v V`]`

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list

" color theme
" START MOLOKAI
" color molokai
" let g:molokai_original = 1 " original monokai background color
" let g:rehash256 = 1 " attempts 256 color version as close as possible to the default
" " make visual color brighter...sorry molokai><
" hi Visual cterm=reverse
" END MOLOKAI
" 
" START PAPERCOLOR
set t_Co=256
set background=dark
colorscheme PaperColor
" END PAPERCOLOR

"""""""""""""""
" Search
"""""""""""""""
" nnoremap / /\v
" vnoremap / /\v
set ignorecase
set smartcase
" set gdefault
set incsearch
set showmatch
set hlsearch
" press space to clear search results
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>
nnoremap <tab> %
vnoremap <tab> %

"""""""""""""""""""""""
" set line wrap
"""""""""""""""""""""""
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80
" toggle line wrap by leader + w
noremap <silent> <Leader>l :call ToggleWrap()<CR>
function ToggleWrap()
  if &wrap
    echo "Wrap OFF"
    setlocal nowrap
    set virtualedit=all
    silent! nunmap <buffer> <Up>
    silent! nunmap <buffer> <Down>
    silent! nunmap <buffer> <Home>
    silent! nunmap <buffer> <End>
    silent! iunmap <buffer> <Up>
    silent! iunmap <buffer> <Down>
    silent! iunmap <buffer> <Home>
    silent! iunmap <buffer> <End>
  else
    echo "Wrap ON"
    setlocal wrap linebreak nolist
    set virtualedit=
    setlocal display+=lastline
    noremap  <buffer> <silent> <Up>   gk
    noremap  <buffer> <silent> <Down> gj
    noremap  <buffer> <silent> <Home> g<Home>
    noremap  <buffer> <silent> <End>  g<End>
    inoremap <buffer> <silent> <Up>   <C-o>gk
    inoremap <buffer> <silent> <Down> <C-o>gj
    inoremap <buffer> <silent> <Home> <C-o>g<Home>
    inoremap <buffer> <silent> <End>  <C-o>g<End>
  endif
endfunction

"""""""""""""""
" save undo info...
"""""""""""""""
" set undofile

"===============================================================================
" Airline settings
"===============================================================================
set laststatus=2 " this shows the status bar, so airline shows
let g:airline_powerline_fonts = 1
" disable automatic echoing... so only display on airline
let g:bufferline_echo = 0
" time when leaving insert mode
set timeoutlen=500
" use PaperColor theme in airline
let g:airline_theme='PaperColor'

"===============================================================================
" dd
"===============================================================================
"""""""""""""""""""""""
" Return to last edit position when opening files (You want this!)
"""""""""""""""""""""""
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif
" Remember info about open buffers on close
set viminfo^=%

""""""""""""""""""""
" relative number
""""""""""""""""""""
" umm... all of these is actually a plugin now...
" 'jeffkreeftmeijer/vim-numbertoggle'
" set to absolute number when lose focus
:au FocusLost * :set number
:au FocusGained * :set relativenumber
" set to absolute number when insert mode, and relative when normal mode
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
" Toggle line number to be relative
function! NumberToggle()
   if(&relativenumber == 1)
      set number
   else
      set relativenumber
   endif
endfunc
nnoremap <Leader>n :call NumberToggle()<cr>

