" set t_Co=256

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set autoindent

set nowrap
set showcmd
set number

" Highlight White Spaces
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraTab ctermbg=red guibg=red

colorscheme wombat256

" syntax enable
syntax on

" Show trailing whitespace:
" match ExtraWhitespace /\s\+$/
" Show trailing whitepace and spaces before a tab:
match ExtraWhitespace /\s\+$\| \+\ze\t/
" Show tabs that are not at the start of a line:
" match ExtraWhitespace /[^\t]\zs\t\+/

" Show trailing tab:
2match ExtraTab /\t\+$/

" Python stuff
autocmd FileType python let python_highlight_all = 1
autocmd FileType python let python_slow_sync = 1
autocmd FileType python set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python set omnifunc=pythoncomplete#Complete

" Other File Types
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

" /home/pyther/aif
autocmd BufRead /home/pyther/aif/* set noexpandtab
" Show spaces used for indenting (so you use only tabs for indenting).
autocmd BufRead /home/pyther/aif/* match ExtraWhitespace /^\t*\zs \+/

