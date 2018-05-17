""" Pluginless universal setup:
" instead of NERDTree, use https://shapeshed.com/vim-netrw/

""" General
" Set UTF-8 as default encoding
if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=ucs-bom,utf-8,latin1
endif

set nocompatible	" Use Vim defaults
set bs=indent,eol,start	" allow backspacing over everything in insert mode
set ruler		    " show the cursor position all the time
filetype on

""" Look & Feel
" Info
set number          " line numbers
set laststatus=2    " always show status bar
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P " more verbose status bar

set splitright      " open vsplits to the right by default

" Colors (Solarized by Ethan Schoonover)
if !exists("g:syntax_on")
    syntax enable
endif

set background=dark
colorscheme solarized

set cursorline

" Tabs & indents
filetype plugin indent on

set tabstop=4       " show existing tab with 4 spaces width
set shiftwidth=4    " when indenting with '>', use 4 spaces width
set expandtab       " On pressing tab, insert 4 spaces
set autoindent
set softtabstop=4   " not sure if we need those
" set expandtab     " not sure if we need those

""" Key Mappings
" Ctrl+l removes search highlighting
nnoremap <silent> <C-l> :nohl<CR><C-l>
call togglebg#map("<F5>")
