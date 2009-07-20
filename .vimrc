" set autoindent
" set smartindent
set softtabstop=4
set shiftwidth=4
set expandtab

set nowrap
set showcmd
set number

colorscheme wombat256

syntax enable

" Python stuff
autocmd FileType python let python_highlight_all = 1
autocmd FileType python let python_slow_sync = 1
