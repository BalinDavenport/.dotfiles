"     .          .
"        ';;,.        ::'
"         ,:::;,,'       :ccc,
"         ,::c::,,,,.     :cccc,
"         ,cccc:;;;;;.    cllll,
"         ,cccc;.;;;;;,   cllll;
"         ;cccc; .;;;;;;. coooo;
"         ;llll;   ,:::::'loooo;
"         ;llll:    ':::::loooo:
"         :oooo:     .::::llodd:
"         .;ooo:       ;cclooo:.
"           .;oc        'coo;.
"               .'         .,.  eovim

set runtimepath+=~/.vim_runtime
set relativenumber          " add line numbers
set linebreak               " do not split words when soft wrap
set autoindent              " indent a new line the same amount as the line just typed
"set spell spelllang=en_gb   " set spellcheck on

set expandtab               " converts tabs to white space
set tabstop=2               " number of columns occupied by a tab character
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set shiftwidth=2            " width for autoindents

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
" adds highlighting when a line goes over 80 characters long
call matchadd('ColorColumn', '\%81v', 100)
