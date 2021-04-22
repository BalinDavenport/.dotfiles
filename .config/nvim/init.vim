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
Plug 'kyazdani42/nvim-web-devicons'
Plug 'hoob3rt/lualine.nvim'

call plug#end()

" Lualine config
let g:lualine = {
    \'options' : {
    \  'theme' : 'nord',
    \  'section_separators' : ['', ''],
    \  'component_separators' : ['', ''],
    \  'icons_enabled' : v:true,
    \},
    \'sections' : {
    \  'lualine_a' : [ ['mode', {'upper': v:true,},], ],
    \  'lualine_b' : [ ['branch', {'icon': '',}, ], ],
    \  'lualine_c' : [ ['filename', {'file_status': v:true,},], ],
    \  'lualine_x' : [ 'encoding', 'fileformat', 'filetype' ],
    \  'lualine_y' : [ 'progress' ],
    \  'lualine_z' : [ 'location'  ],
    \},
    \'inactive_sections' : {
    \  'lualine_a' : [  ],
    \  'lualine_b' : [  ],
    \  'lualine_c' : [ 'filename' ],
    \  'lualine_x' : [ 'location' ],
    \  'lualine_y' : [  ],
    \  'lualine_z' : [  ],
    \},
    \'extensions' : [ 'fzf' ],
    \}
lua require("lualine").setup()

" adds highlighting when a line goes over 80 characters long
call matchadd('ColorColumn', '\%81v', 100)
