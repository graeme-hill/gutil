set nocompatible
set laststatus=2
set encoding=utf-8
filetype off

" use incremental search so that it updates results as you type
set incsearch

" make backspace work the normal way
set backspace=2

" keep cursor in center of screen with big scrolloff
set scrolloff=999

" if using gvim then remove toolbar, menubar, and scrollbar
set guioptions-=m
set guioptions-=T
set guioptions-=r

" load pathogen which will autoload the plugins in bundle directory
set runtimepath+=~/gutil/vim
source ~/gutil/vim/pathogen/autoload/pathogen.vim
call pathogen#incubate('bundle/{}')
execute pathogen#infect()

" change backup directories
set dir=~/gutil/vim/.vimswap
set backupdir=~/gutil/vim/.vimbackup

filetype plugin on
filetype plugin indent on
set ai
set history=100
set ruler
syntax on
set hlsearch

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
  \ if ! exists("g:leave_my_cursor_position_alone") |
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \ exe "normal g'\"" |
  \ endif |
  \ endif

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" change indentation for certain languages
au FileType ruby setl sw=2 sts=2 et
au FileType scala setl sw=2 sts=2 et
au FIleType sbt setl sw=2 sts=2 et
au FIleType c setl sw=2 sts=2 et
au FIleType cpp setl sw=2 sts=2 et
au FIleType h setl sw=2 sts=2 et

" beautification shortcuts
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

map <C-n> :NERDTreeToggle<CR>

colorscheme desert

set number
