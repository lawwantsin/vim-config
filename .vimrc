syntax on
set noswapfile
set shiftwidth=2
set tabstop=2
set number
autocmd vimenter * NERDTree
set nocompatible             
filetype off        
map <C-\> :NERDTreeToggle<CR>
set splitbelow
set splitright
let g:html_indent_style1 = "inc"
let g:NERDTreeWinSize=20
source ~/.vim/pack/comments.vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" Plugins Down Here
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Quramy/vim-js-pretty-template'
Plugin 'jparise/vim-graphql'
Plugin 'styled-components/vim-styled-components'
Plugin  'KeitaNakamura/neodark.vim'
Plugin 'wincent/command-t'

call vundle#end()         
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
colorscheme neodark
filetype plugin indent on
call jspretmpl#register_tag('gql', 'graphql')

autocmd FileType javascript JsPreTmpl
autocmd FileType javascript.jsx JsPreTmpl


set wildignore+=*/public/*,*/node_modules/*
let g:ctrlp_custom_ignore = '/public/'

