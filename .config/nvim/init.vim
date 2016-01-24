" set nocompatible              " be iMproved, required
filetype off                  " required
runtime macros/matchit.vim

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" ------------------------------------------------------------------------------
" Plugins
" ------------------------------------------------------------------------------
"  to get started:
"
"    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"
"  then:
"
"    :VundleInstall
" ------------------------------------------------------------------------------


" let Vundle manage Vundle (required)
Plugin 'gmarik/Vundle.vim'
" the BEST git integration for vim
Plugin 'tpope/vim-fugitive'
" enables the :SCROLLCOLOR command
Plugin 'ScrollColors'
" pretty pretty status bar; integrates with other services
Plugin 'bling/vim-airline'
" auto-formatting for Puppet
Plugin 'rodjek/vim-puppet'
" Lovely whitespace alignment
Plugin 'godlygeek/tabular'
" Makes ASCII tables easy (for ReST, etc)
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'msanders/snipmate.vim'
Plugin 'surround.vim'
Plugin 'matchit.zip'
" Makes navigating code easier
Plugin 'easymotion/vim-easymotion'
" Highlight trailing whitespace
Plugin 'ntpeters/vim-better-whitespace'
" Markdown support
Plugin 'plasticboy/vim-markdown'
" bracket closer
Plugin 'jiangmiao/auto-pairs'
" line ender
Plugin 'tpope/vim-endwise'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



" ------------------------------------------------------------------------------
" Plugin settings
" ------------------------------------------------------------------------------

" vim-markdown
let g:vim_markdown_folding_disabled = 1

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

" ------------------------------------------------------------------------------
" General settings
" ------------------------------------------------------------------------------
syntax on
set tabstop=2 shiftwidth=2 expandtab  " make tabs spaces
set autoindent
set ruler
set number
set title
set mouse=i

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
