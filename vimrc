set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe' 
Plugin 'scrooloose/syntastic'
Plugin 'klen/python-mode'
Plugin 'scrooloose/nerdtree' 
Plugin 'tpope/vim-fugitive'
Plugin 'plasticboy/vim-markdown'


" Configure YCM
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
let g:syntastic_always_populate_loc_list = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" Configure Syntastic
"let g:syntastic_check_on_open=1
let g:syntastic_enables_signs=1
let g:syntastic_python_python_exec = '/usr/bin/python'
let g:syntastic_python_checkers = ['flake8']
" ignore PEP8 syntax check
let g:syntastic_python_checker_args='--ignore=E501,E225' 

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Syntax highlighting
syntax on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



" Spacing and tabs
set expandtab
set tabstop=4
set shiftwidth=4
set shiftround
set softtabstop=4

set backspace=indent,eol,start " allow bs over EOL, indent, start of insert
set whichwrap=b,s,<,>,[,],~ " allow most motion keys to wrap 
set suffixes+=.class,.pyc,.o,.so " skip bytecode files for completion
set suffixes-=.h " don't skip C header files

" Number lines in files
set nu

" Indentation
set autoindent

