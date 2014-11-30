" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    let iCanHazVundle=0
endif
set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'scrooloose/nerdtree'

Plugin 'bling/vim-airline'

"Plugin 'tpope/vim-fugitive'
" Color schemes
" badwolf color scheme
Plugin 'sjl/badwolf'
Plugin 'tomasr/molokai'


" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine 
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstaruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()             " required
filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList     - lists configured plugins
" :PluginInstall  - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line 

colorscheme badwolf
syntax on
set number
set backspace=indent,eol,start
set history=50
set ruler
set showcmd
set incsearch
set expandtab
set tabstop=4
set shiftwidth=4      "set indentation to 4 spaces
set hlsearch          "highlight search terms
set ic                "Ignore Case during searches
set autoindent        "start new line at the same indentation level
set cmdheight=1       "The commandbar height
set showmatch         "Show matching bracets when text indicator is over them
set t_Co=256

" VIM airline config
set laststatus=2
set noshowmode        "Get rid of default mode indicator
let g:airline_powerline_fonts = 1 " Use powerline symbols
let g:airline_theme='light'
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#tabline#fnamedmod = ':t' " Show just the filename
" End of airline configs

set splitbelow        " Horizontal splits open below current file
set splitright        " Vertical splits open to the right of the current file
set wildmode=longest,list " Pressing <Tab> shows command suggestions 

