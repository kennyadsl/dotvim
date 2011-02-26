call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"####################### Start functions #######################"

" Open NERDTree and an empty file each time we open a directory "
function OpenNerdtreeOnDir()
  if isdirectory(@%)
    NERDTree %
    wincmd w
    let g:NERDTreeOpenedBefore = 1
  endif 
endfunction

" Mirror NERDTree in the new tab if it was already opened for some other tab "
function OpenNerdtreeMirror()
  if exists("g:NERDTreeOpenedBefore")
    aboveleft NERDTreeMirror
  endif
endfunction

"####################### End functions #######################"



"####################### Start autocmd #######################"
" Look for function comments to understand what is done "

autocmd VimEnter * call OpenNerdtreeOnDir()
autocmd BufWinEnter * call OpenNerdtreeMirror()
autocmd Filetype eruby,html,xml,xsl let b:closetag_html_style=1 | source ~/.vim/plugin/closetag.vim 

"####################### End autocmd #######################"



"####################### Start keyboard mappings #######################"

" Comment toggle "
map t/ ,c<space>

" Sexy, clean comment add "
map s/ ,cs

" Parallel (left/right) comment add "
map z/ ,cb

" Fuzzyfinder shortcuts "
map ff :FufFile<CR>

" taglist plugin shortcuts "
map tl :TlistToggle<CR>

" Double-click to open and close fold "
map <2-LeftMouse> za

"####################### End keyboard mappings #######################"



"####################### Start generic options #######################"

colorscheme railscasts

filetype plugin indent on

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

" Plugin Options
let g:fuf_keyOpenTabpage='<CR>' 

let g:NERDTreeMouseMode=2

let g:PROMPT='shell $ '

let Tlist_Ctags_Cmd='/opt/local/bin/ctags'

let mapleader='\'

"####################### End generic options #######################"
