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
" Lovely whitespace alignment
Plug 'godlygeek/tabular'
" Highlight trailing whitespace
Plug 'ntpeters/vim-better-whitespace'
" Markdown support
Plug 'plasticboy/vim-markdown'
" bracket closer
Plug 'jiangmiao/auto-pairs'
" line ender
Plug 'tpope/vim-endwise'
" indent guides
Plug 'yggdroot/indentline'
" completion?
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" colors
Plug 'dylanaraps/wal.vim'
" better python syntax
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
" better json
Plug 'elzr/vim-json'

call plug#end()


" ------------------------------------------------------------------------------
" Plugin settings
" ------------------------------------------------------------------------------

" vim-markdown
let g:vim_markdown_folding_disabled = 1

" this is the best characters for the default Monospace font
set laststatus=2
let g:airline_powerline_fonts = 1
" let g:airline_theme='molokai'
" let g:airline_theme='oceanicnext'

let g:indentLine_char = '▏'

" Use deoplete.
let g:deoplete#enable_at_startup = 1
let g:deoplete#max_list = 10

" don't hide quotes in json files
"let g:vim_json_syntax_conceal = 0

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
" colorscheme wal
