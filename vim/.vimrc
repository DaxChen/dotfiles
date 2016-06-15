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
" NeoBundle setup
"===============================================================================
" Besides the bundles to install, assume that everything until the end of this
" section is required for NeoBundle's setup process.
if has('vim_starting')
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

" vim plugins, managed by NeoBundle
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'
NeoBundle 'terryma/vim-multiple-cursors'

NeoBundle 'tomtom/tcomment_vim' " toggle line comment type 'gcc' or use <ctrl+_><ctrl+_>
"NeoBundle 'tpope/vim-repeat', '7a6675f09'       " Enable . repeat for plugin operations (eg. gitgutter)
"NeoBundle 'tpope/vim-surround', '42e9b46e'
NeoBundle 'jeetsukumaran/vim-filebeagle'
"NeoBundle 'tommcdo/vim-exchange', 'b82a774'
"NeoBundle 'AndrewRadev/splitjoin.vim', '4b062a' " gS and gJ to split/join lines
NeoBundle 'sheerun/vim-polyglot'     " syntax highlighting for many languages
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'posva/vim-vue' " syntax highlighting for .vue files
"NeoBundle 'vimwiki/vimwiki', '2c03d8'
"NeoBundle 'justinmk/vim-sneak', '9eb89e43'
"NeoBundle 'af/YankRing.vim', '0e4235b1'         " using fork, as v18 isn't officially on GH
"NeoBundle 'tpope/vim-obsession', '4ab72e07ec'   " start a session file with :Obsession
"NeoBundle 'ashisha/image.vim', 'ae15d1c5'       " view images in vim (requires `pip install Pillow`)
NeoBundle 'gabesoft/vim-ags'

" markdown
NeoBundle 'godlygeek/tabular'
" NeoBundle 'plasticboy/vim-markdown'

" Git/VCS related plugins
NeoBundle 'tpope/vim-fugitive'      " show current branch in vim
NeoBundle 'airblade/vim-gitgutter'  " show line git diff changes

" Indentation, etc. Autodetect, but override with .editorconfig if present:
NeoBundle 'tpope/vim-sleuth'
NeoBundle 'editorconfig/editorconfig-vim'

" Javascript and HTML-related plugins
"NeoBundle 'moll/vim-node', '07a5e9f91'      " Lazy loading doesn't work for some reason
NeoBundleLazy 'rstacruz/sparkup', {'autoload':{'filetypes':['html']}, 'rtp': 'vim/'}
"NeoBundleLazy 'tpope/vim-ragtag', {'autoload':{'filetypes':['html']}}   " Use <C-x>/ to close last open html tag

" Ultisnips (private snippets are stored in this repo)
"NeoBundle 'UltiSnips', '3.0'

" theme/syntax related plugins:
" NeoBundle 'scrooloose/syntastic' " syntax checking
NeoBundle 'colorizer' " highlights css colours in the editor.
NeoBundle 'ryanoasis/vim-devicons' " used with nerd-fonts

" Colour schemes:
NeoBundle 'NLKNguyen/papercolor-theme'
" NeoBundle 'tomasr/molokai'        " default
"NeoBundle 'morhetz/gruvbox', 'ffe202e4'         " brown/retro. :set bg=dark
"NeoBundle 'whatyouhide/vim-gotham', '6486e10'

" plugins for colorscheme dev (not tested yet):
" https://github.com/shawncplus/Vim-toCterm
" https://github.com/guns/xterm-color-table.vim

" Try later:
" NeoBundle 'tpope/vim-unimpaired'
" NeoBundle 'zefei/vim-colortuner'
" NeoBundle 'mattn/emmet-vim'
" NeoBundle 'jaxbot/github-issues.vim'          " TODO: configure this

" Tried but disabled for now:
" NeoBundle 'ervandew/supertab', 'c8bfeceb'
" NeoBundle 'Raimondi/delimitMate'       " disabled because of https://github.com/Raimondi/delimitMate/issues/138

call neobundle#end()
filetype plugin indent on
NeoBundleCheck
"===============================================================================
" (End of NeoBundle setup)
"===============================================================================


"===============================================================================
" Settings for pulgins
"===============================================================================
"""""""""""""""""""""""
" syntastic
"""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


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

