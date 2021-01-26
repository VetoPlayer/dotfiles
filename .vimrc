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
set title
syntax on
colorscheme winter
map <F7> :tabp<CR>
map <F8> :tabn<CR>
set showmatch
set encoding=utf-8
" Highlight Trailing Whitespace
highlight ExtraWhiteSpace ctermbg=red guibg=red 
match ExtraWhiteSpace /\s\+$/
" Python indent
autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80 smarttab expandtab
" NERDTree for browsing files
map <F2> :NERDTreeToggle<CR>
" Tell vim where to find tags: in the current directory under tags
set tags=./tags,tags;$HOME
let g:ale_python_pylint_options = '--load-plugins pylint_flask,pylint_flask_sqlalchemy'
" Colors extra
hi Pmenu ctermbg=DarkBlue ctermfg=black
hi PmenuSel ctermbg=LightBlue ctermfg=black
hi Folded ctermbg=Black
" Set Folding Method
set foldmethod=syntax
