" Set the colorscheme
" colorscheme onedark
colorscheme papercolor
set background=dark

" show line numbers
set number
" set relativenumber          " show relative line numbers

" show cursorline
set cursorline

" switch cursor to line when in insert mode, and block when not
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

if &term =~ '256color'
    " disable background color erase
    set t_ut=
endif

" enable 24 bit color support if supported
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1 " this is depricated, use set termguicolors
if (empty($TMUX) && has("termguicolors"))
    set termguicolors
endif

" set Vim-specific sequences for RGB colors
" https://github.com/vim/vim/issues/993#issuecomment-255651605
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" make the highlighting of tabs and other non-text less annoying
highlight SpecialKey ctermbg=none ctermfg=8
highlight NonText ctermbg=none ctermfg=8

" make comments and HTML attributes italic
highlight Comment cterm=italic
highlight htmlArg cterm=italic

" toggle invisible characters
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'
