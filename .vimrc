"VIM configuration file customized to my needs

" We do not want to be compatible with vi
set nocompatible

" Always display file name at bottom of screen
set modeline
set ls=2

" Highlighting
set number
syntax on

" Indentation
set expandtab
set shiftwidth=4
set softtabstop=4
set smartindent
set autoindent

" Highlight lines that are more than 80 characters
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" vundle config
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
"...
Bundle 'scrooloose/nerdtree'
Bundle 'minibufexpl.vim'
Bundle 'taglist.vim'
Bundle 'xmledit'
Bundle 'php-doc'
Bundle 'Printer-Dialog'
Bundle 'Syntastic'
Bundle 'a.vim'
Bundle 'snipMate'


" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed.." Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
filetype plugin indent on

" Code.
set showmatch     " set show matching parenthesis
set list " This line and the below highlight whitespaces
set listchars=tab:>.,trail:.,extends:#,nbsp:.
"autocmd filetype html,xml set listchars-=tab:>. " Disables space highlighting for specific types of files
set pastetoggle=<F2> "Toggle on and off paste mode

" General
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class,*.o
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

" Fix backspace in Vim
set bs=2

" Save file changes automatically
set autowrite


"disable beep on wrong command
set vb t_vb=

"display current position within file
set ruler

"enable incremental search
set incsearch

"Remove trailing whitespaces
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
