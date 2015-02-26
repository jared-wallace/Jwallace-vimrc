" Jared Wallace's custom vimrc
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tomasr/molokai'
Plugin 'kien/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'myusuf3/numbers.vim'

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
" Put your non-Plugin stuff after this line

set background=dark
set term=xterm
colorscheme solarized
syntax on
set history=1000
set backup " Backups are nice ...
if has('persistent_undo')
    set undofile " So is persistent undo ...
    set undolevels=1000 " Maximum number of changes that can be undone
    set undoreload=10000 " Maximum number lines to save for undo on a buffer reload
endif
set backupdir=./.backup,/tmp,.
set undodir=./.backup,/tmp,.
set directory=./.backup,/tmp,.
set backspace=indent,eol,start " Backspace for dummies
set linespace=0 " No extra spaces between rows
set nu " Line numbers on
set showmatch " Show matching brackets/parenthesis
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
set nowrap " Do not wrap long lines
set autoindent " Indent at the same level of the previous line
set shiftwidth=4 " Use indents of 4 spaces
set expandtab " Tabs are spaces, not tabs
set tabstop=4 " An indentation every four columns
set softtabstop=4 " Let backspace delete indent
set pastetoggle=<F12> " pastetoggle (sane indentation on pastes)
cmap w!! w !sudo tee % >/dev/null
let mapleader=","
map <C-n> :NERDTreeToggle<CR>
