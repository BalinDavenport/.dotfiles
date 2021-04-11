
" Vim config

" new vim
set runtimepath+=~/.vim_runtime
set cc=80                   " set an 80 column border for good coding style
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set relativenumber          " add line numbers
set linebreak               " do not split words when soft wrap
set spell spelllang=en_gb   " set spellcheck on

" enable sytax
syntax enable
" initialize plugin system
call plug#begin('~/.nvim/plugged')

" PLUGINS
Plug 'preservim/nerdtree'
Plug 'frazrepo/vim-rainbow'
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

