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
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

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
" Put your non-Plugin stuff after this line

" for switching to NERDTree console with Ctrl-N
map <C-n> :NERDTreeFocus<CR>

" vim-airline stuff for the status bar
let g:airline_theme='solarized'
" Change airline positions
function! AirlineInit()
	let g:airline_section_a = airline#section#create(['mode'])
	let g:airline_section_b = airline#section#create(['hunks'])
	let g:airline_section_c = airline#section#create(['%f'])
	let g:airline_section_x = ''
  let g:airline_section_y = ''
  let g:airline_section_warning = ''

endfunction
autocmd User AirlineAfterInit call AirlineInit()

set showmode
" set cindent
set tabstop=2
set shiftwidth=2
set expandtab
set hlsearch
set smartcase
set ignorecase
set number
set showmatch
" filetype indent plugin on
set nocompatible
set wildmenu
set nostartofline
set ruler
set laststatus=2
" set paste
let g:python_recommended_style=0
set tags=./tags

syntax enable
set background=dark
colorscheme deus 
