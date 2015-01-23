set nocompatible              " be iMproved, required
filetype off                  " required

"==========================================================
" -- Vundle -----------------------------------------------
"==========================================================

" Install Vundle if not present
if !filereadable(expand('~/.vim/bundle/Vundle.vim/README.md'))
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" -- GitHub -----------------------------------------------
"Plugin 'scrooloose/syntastic'
"Plugin 'klen/python-mode'
Plugin 'scrooloose/nerdtree' 
Plugin 'tpope/vim-fugitive'
"Plugin 'plasticboy/vim-markdown'
Plugin 'gabrielelana/vim-markdown'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fireplace'
Plugin 'guns/vim-clojure-static'
Plugin 'ervandew/supertab'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdcommenter'


"----------------------------------------------------------
" -- Plugin Configuration ---------------------------------
"----------------------------------------------------------
" Configure NERDTree
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
map <F2> :NERDTreeToggle<CR>

" Configure PyMode
" Disable Rope Autocomplete
" let g:pymode_rope = 0
" Documentation
" let g:pymode_doc = 1
" let g:pymode_doc_key = 'K'

" Configure Jedi-Vim
autocmd FileType python setlocal completeopt-=preview
let g:jedi#popup_on_dot = 0
let g:jedi#force_py_version = 3
let g:jedi#auto_close_doc = 1
let g:jedi#show_call_signatures = 2

" Configure SuperTab
let g:SuperTabDefaultCompletionType = "context"

" Configure Syntastic
"let g:syntastic_check_on_open=1
"let g:syntastic_enables_signs=1
"let g:syntastic_python_python_exec = '/usr/bin/python'
let g:syntastic_python_checkers = ['flake8']
" ignore some syntax checks 
let g:syntastic_python_flake8_args = '--ignore=W191,E501,E128,W291,E126,E101'

" Configure vim-airline
set laststatus=2
let g:airline_powerline_fonts = 1
set t_Co=256

" Configure vim-markdown
" 

"" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"----------------------------------------------------------
" -- Vim Configuration ------------------------------------
"----------------------------------------------------------
" Syntax highlighting
syntax on


" Search using smartcase (ignore case unless uppercase letter in string)
set ignorecase
set smartcase

" Automatically change window's cwd to file's directory
set autochdir

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
set showmatch " Show matching brackets

" Number lines in files
set nu

" Indentation
set autoindent

" Set colorscheme
"colorscheme solarized
"let g:solarized_termcolors=256
