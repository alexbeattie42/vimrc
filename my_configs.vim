set number
set t_Co=256
imap jk <esc>
let g:solarized_termcolors=256
syntax enable
colorscheme solarized
filetype plugin on
filetype indent on
set nowrap
set expandtab
set smartindent
set autoindent
set showmatch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray
autocmd BufWritePre * :%s/\s\+$//e
autocmd BufRead,BufWritePre *.c normal gg=G
if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif
