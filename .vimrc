let base16colorspace=256  " Access colors present in 256 colorspace

syntax on
set background=dark
set nobackup
set laststatus=2
set showcmd          	       "display incomplete commands
set mouse=a
set autoindent                 "always set autoindenting on
set number
set history=50
set ignorecase			" ignore case when searching
set smartcase
set hlsearch
set incsearch			" make search like modern browsers

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
Plugin 'gmarik/Vundle.vim'
Plugin 'chriskempson/base16-vim'
call vundle#end()
filetype plugin indent on    " required

colorscheme base16-eighties
