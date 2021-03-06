set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

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
" Put your non-Plugin stuff after this line syntax on 
let g:ycm_global_ycm_extra_conf = '/home/jackhong/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
set completeopt-=preview
set backspace=indent,eol,start
syntax on
set mouse=a
set number
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set incsearch

highlight ColorColumn ctermbg=green
call matchadd('ColorColumn', '\%81v', 100)
colorscheme slate

