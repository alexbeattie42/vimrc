set number
set t_Co=256
imap jk <esc>
let g:solarized_termcolors=256
syntax enable
colorscheme solarized
set guifont=Menol\ Regular:h18
filetype plugin on

filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set showmatch
autocmd BufWritePre * :%s/\s\+$//e
filetype plugin on
