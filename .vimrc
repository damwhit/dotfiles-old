call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'tomtom/tcomment_vim'
Plug 'wakatime/vim-wakatime'
Plug 'terryma/vim-multiple-cursors'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'mattn/emmet-vim'
Plug 'leafgarland/typescript-vim'
Plug 'mileszs/ack.vim'
Plug 'mattn/webapi-vim'
Plug 'vim-airline/vim-airline'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'peitalin/vim-jsx-typescript'
call plug#end()

filetype plugin indent on
filetype off
set tabstop=2
set shiftwidth=2
set expandtab
set nocompatible
set number
syntax on
set hlsearch
set noeb vb t_vb=
set backspace=indent,eol,start
 
" vim-jsx
let g:jsx_ext_required = 0

" colorschemes
set termguicolors " for solarized only
colorscheme solarized8

" nerdtree
map <C-\> :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1
let g:NERDTreeHijackNetrw=0 " this makes it so that nerd tree does not open automatically

" ctrlp
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = '\v[\/](coverage|node_modules|target|dist)|(\.(swp|ico|git|svn))$'
let g:ctrlp_use_caching = 0

" ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
map <C-f> :Ack!<Space> 

" backup directories
set backup
set backupdir=/private/tmp
set dir=/private/tmp

" custom emmet snippets
let g:user_emmet_leader_key = '<c-s>'
let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/dotfiles/.vim/snippets.json')), "\n"))

" fonts
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set termencoding=utf-8
if has("gui_running")
  let s:uname = system("uname")
  if s:uname == "Darwin\n"
    set guifont=Inconsolata\ for\ Powerline:h15
  endif
endif

