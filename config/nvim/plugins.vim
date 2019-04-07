call plug#begin('~/.config/nvim/plugged')

" this is for vim, not neovim (run :CheckHealth said remove this)
if !has('nvim')
    Plug 'tpope/vim-sensible' " Defaults everyone can agree on
endif


" colorschemes
""""""""""""""""""""""""""""
Plug 'NLKNguyen/papercolor-theme' " Light & Dark color schemes inspired by Google's Material Design
Plug 'tomasr/molokai' " Vim port of the monokai theme for TextMate originally created by Wimer Hazenberg
Plug 'joshdick/onedark.vim' " dark color scheme inspired by Atom's One Dark
    " let g:onedark_termcolors=16
    let g:onedark_terminal_italics=1
Plug 'junegunn/seoul256.vim' " Low-contrast Vim color scheme based on Seoul Colors
Plug 'morhetz/gruvbox' " Retro groove color scheme
Plug 'whatyouhide/vim-gotham' " Code never sleeps in Gotham City. Gotham is a very dark colorscheme
Plug 'altercation/vim-colors-solarized' " Precision colors for machines and people
" Plug 'zefei/vim-colortuner' " Adjust your vim colors using sliders


" UI related
""""""""""""""""""""""""""""
Plug 'myusuf3/numbers.vim' " intelligently toggling line numbers
" Plug 'bling/vim-bufferline' " super simple vim plugin to show the list of buffers in the command bar
"     let g:bufferline_echo = 0 " hide bufferline in command bar (so only show in airline status line)
"     let g:bufferline_show_bufnr = 0 " don't show buffer number
"     " let g:bufferline_rotate = 1 " scrolling with fixed current buffer position
"     " let g:bufferline_fixed_index = -1 " always show current buffer on the last one
Plug 'vim-airline/vim-airline' " fancy statusline
Plug 'vim-airline/vim-airline-themes' " themes for vim-airline
    let g:airline_powerline_fonts=1 " use powerline fonts
    let g:airline_theme='onedark'
    let g:airline#extensions#tabline#enabled = 1 " enable airline tabline
    let g:airline#extensions#tabline#tab_min_count = 2 " only show tabline if tabs are being used (more than 1 tab open)
    let g:airline#extensions#tabline#buffer_min_count = 2 " minimum number of buffers needed to show the tabline
    " let g:airline#extensions#tabline#show_buffers = 0 " do not show open buffers in tabline
    let g:airline#extensions#tabline#show_splits = 0
" Plug 'Yggdroot/indentLine' " (this is very slow and laggy) display the indention levels with thin vertical lines
" Plug 'nathanaelkane/vim-indent-guides' " visually displaying indent levels in code


" utilities
""""""""""""""""""""""""""""
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons' " file drawer
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim' " fuzzy file finder and so much more
    " Plug 'ctrlpvim/ctrlp.vim' " fuzzy file finder
Plug 'gabesoft/vim-ags' " silver searcher (ag) plugin
Plug 'Raimondi/delimitMate' " automatic closing of quotes, parenthesis, brackets, etc.
    " Plug 'jiangmiao/auto-pairs' " automatic closing of quotes, parenthesis, brackets, etc.
Plug 'tpope/vim-commentary' " comment stuff out
    " Plug 'tomtom/tcomment_vim' " toggle line comment type 'gcc' or use <ctrl+_><ctrl+_>
Plug 'tpope/vim-unimpaired' " mappings which are simply short normal mode aliases for commonly used ex commands
Plug 'tpope/vim-surround' " mappings to easily delete, change and add such surroundings in pairs, such as quotes, parens, etc.
" Plug 'benmills/vimux' " tmux integration for vim
Plug 'romainl/vim-qf' " Tame the quickfix window
    let g:qf_loclist_window_bottom=0

" lint
Plug 'benekastah/neomake' " neovim replacement for syntastic using neovim's job control functonality
    " let g:neomake_open_list = 2
    let g:neomake_list_height = 3
" " Plug 'benjie/neomake-local-eslint.vim' " Prefer local eslint over global with neomake
" Plug 'jaawerth/nrun.vim' " (neomake-local-eslint.vim uses `npm bin` which is very slow) this uses native which and exec function
"     " setup eslint
"     let g:neomake_javascript_enabled_makers = ['eslint']
"     " when switching/opening a JS buffer, set neomake's eslint path, and enable it as a maker
"     au BufEnter *.js let b:neomake_javascript_eslint_exe = nrun#Which('eslint')

Plug 'tpope/vim-repeat' " enables repeating other supported plugins with the . command
Plug 'editorconfig/editorconfig-vim' " .editorconfig support
Plug 'tpope/vim-sleuth' " Indentation, etc. Autodetect, but override with .editorconfig if present:
Plug 'sotte/presenting.vim', { 'for': 'markdown' } " a simple tool for presenting slides in vim based on text files
Plug 'tpope/vim-dispatch' " asynchronous build and test dispatcher
    " Plug 'tpope/vim-vinegar' " combine with netrw to use `-` to naviagte (similar to vim-filebeagle) (encoungtered can't close bug...)
Plug 'jeetsukumaran/vim-filebeagle' " file system explorer
Plug 'AndrewRadev/splitjoin.vim' " single/multi line code handler: gS - split one line into multiple, gJ - combine multiple lines into one
Plug 'vim-scripts/matchit.zip' " extended % matching
" Plug 'terryma/vim-multiple-cursors' " True Sublime Text style multiple selection (you don't need this... see: https://medium.com/@schtoeffel/you-don-t-need-more-than-one-cursor-in-vim-2c44117d51db#.xy3xc9otx)
Plug 'tommcdo/vim-exchange' " Easily swap two objects with `cx`, eg. 'cxiw' on first word and 'cxiw' on second word again
    " Plug 'justinmk/vim-sneak' " The missing motion for Vim (eg. use 'sab' to go to the next 'ab'
Plug 'vim-scripts/YankRing.vim' " history of yank registers. use <c-p>/<c-n> to change pasted value
Plug 'dietsche/vim-lastplace' " Intelligently reopen files at your last edit position
Plug 'tpope/vim-obsession' " start a session file with :Obsession

" git
Plug 'tpope/vim-fugitive' " amazing git wrapper for vim
Plug 'airblade/vim-gitgutter'  " show line git diff changes
    set updatetime=1000 " update gitgutter how many ms after you stop typing (readme recommends 250ms)
    let g:gitgutter_max_signs = 500  " hide gitgutter if signs more than how many (default value is 500)
" Plug 'jaxbot/github-issues.vim' " Github issue lookup, automatically populate the omnicomplete menu with issues on Github
    " github-issues.vim requires python support (neovim: pip install --user neovim)

Plug 'wakatime/vim-wakatime' " track time usage with wakatime


" auto complete && snippets
""""""""""""""""""""""""""""""
" using YCM together with Ultisnips and Supertab: http://stackoverflow.com/a/22253548/4997172
Plug 'Valloric/YouCompleteMe' " code-completion engine
    " YouCompleteMe needs to be compiled, after :PlugInstall, go to `~/.dotfiles/config/nvim/plugged/YouCompleteMe`
    " I have "brew" installed "cmake, python(3), go",
    " and yarn(npm) global installed "typescript",
    " (I don't do C# and Rust programming (yet)
    " and compile YCM with the following command (in `/.dotfiles/config/nvim/plugged/YouCompleteMe`):
    " "./install.py --clang-completer --tern-completer --gocode-completer"
    " if you have everything installed, you can run "./install.py --all"
    " let g:ycm_min_num_of_chars_for_completion = 2 " number of chars before identifier-based completion triggers
    let g:ycm_complete_in_comments = 1 " show auto-complete when typing in comments
    let g:ycm_complete_in_strings = 1 " show auto-complete in strings
    let g:ycm_autoclose_preview_window_after_insertion = 1 " auto-close preview (top) window after leaving insert mode
    let g:ycm_filetype_blacklist = {} " use YCM with every file type
    let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
    let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
    let g:SuperTabDefaultCompletionType = '<C-n>'
Plug 'ervandew/supertab' " Perform all your vim insert mode completions with Tab
Plug 'SirVer/ultisnips' " The ultimate snippet solution
    let g:UltiSnipsEditSplit="vertical" " make :UltiSnipsEdit to split window vertically
    let g:UltiSnipsExpandTrigger = "<tab>" " key binding for Expand
    let g:UltiSnipsJumpForwardTrigger = "<tab>" " move to the next tabstop
    let g:UltiSnipsJumpBackwardTrigger = "<S-TAB>" " move to the previous tabstop
Plug 'honza/vim-snippets' " some default snippets
    let g:ultisnips_javascript = {
      \ 'keyword-spacing': 'always',
      \ 'semi': 'never',
      \ 'space-before-function-paren': 'always',
      \ }


" specials
"""""""""""""""""""""""""""""
Plug 'mhinz/vim-startify' " The fancy start screen for Vim
Plug 'vimwiki/vimwiki' " Personal Wiki for Vim http://vimwiki.github.io/
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' } " distraction-free writing (Best served with limelight.vim)
Plug 'junegunn/limelight.vim', { 'on': 'Limelight' } " focus tool. Good for presentating with vim (Best served with Goyo.vim)


" Language Specifics
"""""""""""""""""""""""""""""
" html / templates
Plug 'tpope/vim-ragtag' " endings for html, xml, etc. - ehances surround, Use <C-x>/ to close last open html tag
Plug 'gregsexton/MatchTag', { 'for': ['html', 'vue'] } " match tags in html, similar to paren support
Plug 'mattn/emmet-vim', { 'for': ['html', 'vue'] } " emmet support for vim - easily create markdup wth CSS-like syntax
Plug 'othree/html5.vim', { 'for': ['html', 'vue'] } " html5 support
Plug 'mustache/vim-mustache-handlebars' " mustach support
Plug 'digitaltoad/vim-pug', { 'for': ['jade', 'pug', 'vue'] } " jade support

" JavaScript
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'othree/yajs.vim', { 'for': ['javascript', 'javascript.jsx', 'vue'] } " Yet Another JavaScript Syntax plugin
Plug 'mxw/vim-jsx', { 'for': ['jsx', 'javascript'] } " JSX support
" Plug 'gavocanov/vim-js-indent', { 'for': ['javascript', 'javascript.jsx', 'vue'] } " JavaScript indent support
Plug 'moll/vim-node', { 'for': 'javascript' } " node support
Plug 'othree/es.next.syntax.vim', { 'for': ['javascript', 'javascript.jsx', 'vue'] } " ES6 and beyond syntax
Plug 'ternjs/tern_for_vim' " Tern.js plugin for Vim

" Vue.js '.vue' files
Plug 'posva/vim-vue' " syntax highlighting for .vue files

" styles
Plug 'lilydjwg/colorizer' " colorize all text in the form #rrggbb, #rgb, rgb(...), rgba(...)
Plug 'wavded/vim-stylus', { 'for': ['stylus', 'markdown'] } " markdown support
Plug 'groenewege/vim-less', { 'for': 'less' } " less support
Plug 'ap/vim-css-color', { 'for': ['css','stylus','scss', 'vue'] } " set the background of hex color values to the color
Plug 'hail2u/vim-css3-syntax', { 'for': ['css', 'vue'] } " CSS3 syntax support
Plug 'cakebaker/scss-syntax.vim', { 'for': ['scss', 'vue'] } " sass scss syntax support

" markdown
Plug 'itspriddle/vim-marked', { 'for': 'markdown', 'on': 'MarkedOpen' } " Open markdown files in Marked.app - mapped to <leader>m
Plug 'tpope/vim-markdown', { 'for': 'markdown' } " markdown support
" Plug 'godlygeek/tabular' " text filtering and alignment (The tabular plugin must come before vim-markdown)
" Plug 'plasticboy/vim-markdown', { 'for': 'markdown' } " Syntax, matching rules, mappings for the original Markdown

" other languages
Plug 'elzr/vim-json', { 'for': 'json' } " JSON support
    " let g:vim_json_syntax_conceal = 0 " don't hide quotes in json files
" Plug 'Shougo/vimproc.vim', { 'do': 'make' } " interactive command execution in vim
Plug 'fatih/vim-go', { 'for': 'go' } " go support
Plug 'timcharper/textile.vim', { 'for': 'textile' } " textile support
" Plug 'tclem/vim-arduino' " arduino support - compile wihtout needing to open the arduino IDE
" Plug 'sheerun/vim-polyglot'     " syntax highlighting for many languages

" not using...
    " " TypeScript
    " Plug 'Quramy/tsuquyomi', { 'for': 'typescript', 'do': 'npm install' } " extended typescript support - works as a client for TSServer
    " Plug 'clausreinke/typescript-tools.vim', { 'for': 'typescript' } " typescript tools
    " Plug 'leafgarland/typescript-vim', { 'for': 'typescript' } " typescript support
    " " Elm
    " Plug 'lambdatoast/elm.vim'

call plug#end()

