call plug#begin('~/.config/nvim/plugged')

" colorschemes
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'tomasr/molokai'        " default
Plug 'joshdick/onedark.vim'

" utilities
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons' " file drawer
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim' " fuzzy file finder and so much more
" Plug 'ctrlpvim/ctrlp.vim' " fuzzy file finder
Plug 'gabesoft/vim-ags' " silver searcher (ag) plugin
Plug 'Raimondi/delimitMate' " automatic closing of quotes, parenthesis, brackets, etc.
" Plug 'jiangmiao/auto-pairs' " automatic closing of quotes, parenthesis, brackets, etc.
Plug 'tpope/vim-commentary' " comment stuff out
" Plug 'tomtom/tcomment_vim' " toggle line comment type 'gcc' or use <ctrl+_><ctrl+_>
Plug 'tpope/vim-unimpaired' " mappings which are simply short normal mode aliases for commonly used ex commands
" Plug 'tpope/vim-ragtag' " endings for html, xml, etc. - ehances surround<Paste> Use <C-x>/ to close last open html tag
Plug 'tpope/vim-surround' " mappings to easily delete, change and add such surroundings in pairs, such as quotes, parens, etc.
" Plug 'benmills/vimux' " tmux integration for vim
Plug 'vim-airline/vim-airline' " fancy statusline
Plug 'vim-airline/vim-airline-themes' " themes for vim-airline



call plug#end()

" "===============================================================================
" " OLD NEOBUNDLE PLUGINS
" "===============================================================================
" vim plugins, managed by NeoBundle
" NeoBundle 'terryma/vim-multiple-cursors'

" auto complete
" NeoBundle 'Shougo/neocomplete.vim'
" let g:neocomplete#enable_at_startup = 1
" set backspace=indent,eol,start
" Disable AutoComplPop.
" let g:acp_enableAtStartup = 0
" " Use neocomplete.
" let g:neocomplete#enable_at_startup = 1
" " Use smartcase.
" let g:neocomplete#enable_smart_case = 1
" " Set minimum syntax keyword length.
" let g:neocomplete#sources#syntax#min_keyword_length = 3
" let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" " Recommended key-mappings.
" " <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function()
  " " return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " " For no inserting <CR> key.
  " return pumvisible() ? "\<C-y>" : "\<CR>"
" endfunction
" " <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" " <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" 
" 
" NeoBundle 'Shougo/neosnippet'
" NeoBundle 'Shougo/neosnippet-snippets'
" NeoBundle 'ternjs/tern_for_vim'
" 
" "NeoBundle 'tpope/vim-repeat', '7a6675f09'       " Enable . repeat for plugin operations (eg. gitgutter)
" NeoBundle 'jeetsukumaran/vim-filebeagle'
" "NeoBundle 'tommcdo/vim-exchange', 'b82a774'
" "NeoBundle 'AndrewRadev/splitjoin.vim', '4b062a' " gS and gJ to split/join lines
" NeoBundle 'sheerun/vim-polyglot'     " syntax highlighting for many languages
" NeoBundle 'pangloss/vim-javascript'
" NeoBundle 'posva/vim-vue' " syntax highlighting for .vue files
" "NeoBundle 'vimwiki/vimwiki', '2c03d8'
" "NeoBundle 'justinmk/vim-sneak', '9eb89e43'
" "NeoBundle 'af/YankRing.vim', '0e4235b1'         " using fork, as v18 isn't officially on GH
" "NeoBundle 'tpope/vim-obsession', '4ab72e07ec'   " start a session file with :Obsession
" "NeoBundle 'ashisha/image.vim', 'ae15d1c5'       " view images in vim (requires `pip install Pillow`)
" 
" " markdown
" NeoBundle 'godlygeek/tabular'
" " NeoBundle 'plasticboy/vim-markdown'
" 
" " Git/VCS related plugins
" NeoBundle 'tpope/vim-fugitive'      " show current branch in vim
" NeoBundle 'airblade/vim-gitgutter'  " show line git diff changes
" 
" " Indentation, etc. Autodetect, but override with .editorconfig if present:
" NeoBundle 'tpope/vim-sleuth'
" NeoBundle 'editorconfig/editorconfig-vim'
" 
" " Javascript and HTML-related plugins
" NeoBundle 'maksimr/vim-jsbeautify' " js-beautify using jsbeautifier
" "NeoBundle 'moll/vim-node', '07a5e9f91'      " Lazy loading doesn't work for some reason
" NeoBundleLazy 'rstacruz/sparkup', {'autoload':{'filetypes':['html']}, 'rtp': 'vim/'}
" 
" " Ultisnips (private snippets are stored in this repo)
" "NeoBundle 'UltiSnips', '3.0'
" 
" " theme/syntax related plugins:
" " NeoBundle 'scrooloose/syntastic' " syntax checking
" NeoBundle 'colorizer' " highlights css colours in the editor.
" NeoBundle 'ryanoasis/vim-devicons' " used with nerd-fonts
" 
" " Colour schemes:
" "NeoBundle 'morhetz/gruvbox', 'ffe202e4'         " brown/retro. :set bg=dark
" "NeoBundle 'whatyouhide/vim-gotham', '6486e10'
" 
" " plugins for colorscheme dev (not tested yet):
" " https://github.com/shawncplus/Vim-toCterm
" " https://github.com/guns/xterm-color-table.vim
" 
" " Try later:
" " NeoBundle 'zefei/vim-colortuner'
" " NeoBundle 'mattn/emmet-vim'
" " NeoBundle 'jaxbot/github-issues.vim'          " TODO: configure this
" 
" call neobundle#end()
" filetype plugin indent on
" NeoBundleCheck
" "===============================================================================
" " (End of NeoBundle setup)
" "===============================================================================
