set nocompatible
filetype off
set number
set autoindent
set smartindent
set smarttab
set expandtab
set hlsearch
set ts=4
set sts=4
set sw=4
syntax on
colorscheme winter
map <F7> :tabp<CR>
map <F8> :tabn<CR>
set showmatch
set encoding=utf-8
" Flag unnecessary trailing whitespace in red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
" Python indent
autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80 smarttab expandtab
" NERDTree for browsing files
map <F2> :NERDTreeToggle<CR>
