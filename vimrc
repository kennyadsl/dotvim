

" Comment toggle "
map t/ ,c<space>

" Sexy, clean comment add "
map s/ ,cs

" Parallel (left/right) comment add "
map z/ ,cb


" Double-click to open and close fold "
map <2-LeftMouse> za

colorscheme railscasts

syntax on

set nocompatible

set expandtab

set shiftwidth=2

set softtabstop=2

set tabstop=2

set incsearch

set hlsearch

set smartcase

set ruler

set foldmethod=indent

set foldopen=block,hor,mark,percent,quickfix,tag

set foldlevelstart=99

set laststatus=2

set statusline=%<%f\ %m%=\ [%Y]\ (%(%l,%v%))\ \-\ %P\ 

set scrolloff=3

set mouse=a

if has("autocmd")
  filetype plugin indent on
endif

" Gui Options
if has("gui_running")

  "Completely disable scrollbars and toolbar"
  set guioptions-=L
  set guioptions-=l
  set guioptions-=r
  set guioptions-=R
  set guioptions-=b
  set guioptions-=B
  set guioptions-=T

  "Set window size"
  winsize 119 41
endif

" My Mapping

nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

