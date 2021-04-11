
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

"Enable vim-rainbow
let g:rainbow_active = 1
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

