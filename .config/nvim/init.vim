" Vim config
"
"
set runtimepath+=~/.vim_runtime

" PLUGINS
call plug#begin('~/.nvim/plugged')
" add coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" nord colorscheme
Plug 'arcticicestudio/nord-vim'

" initialize plugin system
call plug#end()

colorscheme nord

" The rest is here
"source ~/.vim_runtime/vimrcs/basic.vim
"source ~/.vim_runtime/vimrcs/filetypes.vim
"source ~/.vim_runtime/vimrcs/plugins_config.vim
"source ~/.vim_runtime/vimrcs/extended.vim

"try
"source ~/.vim_runtime/my_configs.vim
"catch
"endtry
