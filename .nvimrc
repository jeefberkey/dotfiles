call plug#begin()

" git integration
Plug 'tpope/vim-fugitive'
" reduces eye-strain AND looks trendy
Plug 'altercation/vim-colors-solarized'
" enables the :SCROLLCOLOR command
Plug 'vim-scripts/ScrollColors'
" pretty pretty status bar; integrates with other services
Plug 'bling/vim-airline'
" auto-formatting for Puppet
Plug 'rodjek/vim-puppet'
" Lovely whitespace alignment
Plug 'godlygeek/tabular'
" Makes ASCII tables easy (for ReST, etc)
Plug 'dhruvasagar/vim-table-mode'
Plug 'msanders/snipmate.vim'
Plug 'tpope/vim-surround'
" completion
Plug 'Shougo/deoplete.nvim'

call plug#end()

" ------------------------------------------------------------------------------
" Plugin settings
" ------------------------------------------------------------------------------

" set nocompatible              " be iMproved, required
" filetype off                  " required

"
let g:table_mode_corner = '+'
let g:table_mode_separator = '|'

" this is the best characters for the default Monospace font
set laststatus=2
let g:airline_powerline_fonts = 1
let g:irline_theme='bubblegum'
"let g:airline_left_sep='▶'
"let g:airline_right_sep='◀'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.branch='𝌎'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.branch = 'ᚵ'
let g:airline_symbols.branch = 'ᚴ'

let g:deoplete#enable_at_startup = 1

" ------------------------------------------------------------------------------
" General settings
" ------------------------------------------------------------------------------
syntax on
set tabstop=2 shiftwidth=2 expandtab  " make tabs spaces
set autoindent
set ruler

" key bindings
" --------------------------------------
"  toggle paste mode (prevents wonky formatting when pasting into a terminal)
map <F2> :set paste!<cr>

" remove whitespace
map <F5> :%s/[[:space:]]\+$//<cr>

" toggle spellcheck
map <F7> :set spell! spelllang=en_us spellfile=~/.vim/spellfile.add<cr>

" custom colors
" --------------------------------------
" colors for vimdiff
" from https://gforge.onyxpoint.net/redmine/projects/simp-dev/wiki/Tips_and_Tricks
if &diff
  set t_Co=256
  colorscheme zellner
endif


set t_Co=256
set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized  " NOTE: this interferes with base16 gnome colors

set number
