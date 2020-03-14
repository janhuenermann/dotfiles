let config_dir = expand('~/.config/nvim')
let mapleader = ","

" Don't try to be vi compatible
set nocompatible
set termguicolors

" Helps force plugins to load correctly when it is turned back on below
filetype off

" highlight extra whitespace
:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

" exec 'source' expand(expand('~/.config/vim') . '/jan.vim')

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
" Plugin 'octol/vim-cpp-enhanced-highlight'
" Plugin 'bfrg/vim-cpp-modern'
Plugin 'tweekmonster/impsort.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mbbill/undotree'
Plugin 'arzg/vim-corvine'
Plugin 'dracula/vim'
Plugin 'morhetz/gruvbox'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'lumiliet/vim-twig'

" all of your Plugins must be added before the following line
call vundle#end()

" For plugins to load correctly
filetype plugin indent on

" Turn on syntax highlighting
syntax on

" Show line numbers
set number

" Show file stats
set ruler

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=100
set formatoptions=tcqrn1
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Visual clues
set cursorline
set colorcolumn=100

" Windows
set splitright
set splitbelow

" Braces
set showmatch

" Search
set hlsearch
set incsearch
map <leader><space> :let @/=''<cr> " clear search

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd


" Color scheme
colorscheme gruvbox
highlight LineNr guibg=#333333

:match ExtraWhitespace /\s\+\%#\@<!$/
:au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
:au InsertLeave * match ExtraWhitespace /\s\+$/

" Parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

nmap <leader>hh :noh<CR>
nmap <leader>sp :call <SID>SynStack()<CR>

function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

:set inccommand=nosplit
