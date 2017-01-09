" install vim-plug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

" the BEST git integration for vim
Plug 'tpope/vim-fugitive'
" pretty pretty status bar; integrates with other services
Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
" auto-formatting for Puppet
Plug 'rodjek/vim-puppet'
" Lovely whitespace alignment
Plug 'godlygeek/tabular'
" Makes ASCII tables easy (for ReST, etc)
"Plug 'dhruvasagar/vim-table-mode'
"Plug 'msanders/snipmate.vim'
"Plug 'surround.vim'
"Plug 'matchit.zip'
" Highlight trailing whitespace
Plug 'ntpeters/vim-better-whitespace'
" Markdown support
Plug 'plasticboy/vim-markdown'
" bracket closer
Plug 'jiangmiao/auto-pairs'
" line ender
Plug 'tpope/vim-endwise'
" show git changed lines
Plug 'airblade/vim-gitgutter'
" das themes
Plug 'mhartington/oceanic-next'
" I only care about comment toggling (gc)
Plug 'tpope/vim-commentary'
" indent guides
Plug 'yggdroot/indentline'
" completion?
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" smooth scrolling lol
Plug 'yuttie/comfortable-motion.vim'

call plug#end()


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
" let g:airline_theme='molokai'
let g:airline_theme='oceanicnext'

let g:indentLine_char = '▏'

" Use deoplete.
let g:deoplete#enable_at_startup = 1
let g:deoplete#max_list = 10


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
set termguicolors

set list listchars=precedes:«,extends:»,tab:»!,nbsp:„,trail:!

" key bindings
" --------------------------------------
"  toggle paste mode (prevents wonky formatting when pasting into a terminal)
map <F2> :set paste!<cr>
" remove whitespace
map <F5> :%s/[[:space:]]\+$//<cr>
" toggle spellcheck
map <F7> :set spell! spelllang=en_us spellfile=~/.vim/spellfile.add<cr>

" custom colors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
set background=dark
colorscheme OceanicNext
