" ============================================================================= "
" 基本设置
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
set magic
unmap <C-v>
set title
set autoread
set cursorline
set cursorcolumn
set shortmess=atI
set gcr=a:block-blinkon0
set novisualbell
set noerrorbells
set visualbell t_vb=
set t_vb=
set tm=500
set nobomb
set winaltkeys=no
set clipboard+=unnamed
set backspace=2
set ai!
set relativenumber
set nowrapscan
set autochdir
set cmdheight=2
set wildmenu
set nobackup
set noundofile
set noswapfile
winpos 640 270
"au GUIEnter * simalt ~x
"nmap <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
set lines=32 columns=96
syntax on
filetype on
filetype plugin on
filetype indent on

" 菜单设置
set guioptions-=m
set guioptions-=T
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" 文件的编码形式
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,cp936
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages zh_CN.utf-8

" 显示行列
set ruler
set number
set wrap
set showcmd
set showmode
set showmatch
set matchtime=2

" movement
set so=10
set scrolloff=10

" search
set hlsearch
set incsearch
set ignorecase
set smartcase
set history=2000

" tab
set expandtab
set smarttab

" 缩进
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent smartindent shiftround

" 主题
set background=dark
colorscheme solarized
set guifont=consola:h12:cANSI

" 状态栏
set laststatus=2
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
" ============================================================================= "
" map映射
let mapleader=";"
let g:mapleader=";"
noremap \ ;
" buffer遍历快捷键
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
set hid

nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

nnoremap nw <C-W><C-W>
nnoremap <Leader>lw <C-W>l
nnoremap <Leader>hw <C-W>h
nnoremap <Leader>kw <C-W>k
nnoremap <Leader>jw <C-W>j
nnoremap <Leader>cw <C-W>c
nnoremap <Leader>ow <C-W>o
nnoremap <Leader>sw <C-W>s
nnoremap <Leader>vw <C-W>v
nnoremap <Leader>tw <C-W>T
cnoremap <expr> %% getcmdtype( ) == ':' ? expand('%:h').'/' : '%%'

nnoremap U <C-r>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
nnoremap <Leader>tb :tabe

nmap <Leader>lb 0
nmap <Leader>le $
nmap <Leader>p "+p
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>WQ :wa<CR>:q<CR>
nmap <Leader>Q :qa!<CR>
nmap <Leader>pa %
" *.cpp 和 *.h 间切换
nmap <Leader>ch :A<CR>
" 子窗口中显示 *.cpp 或 *.h
nmap <Leader>sch :AS<CR>

" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
map <Leader>sa ggVG"
" ============================================================================= "

" 设置插件管理
filetype off
set rtp+=$VIM/vimfiles/bundle/vundle/
call vundle#rc('$VIM/vimfiles/bundle/')
Bundle 'a.vim'
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Mizuchi/STL-Syntax'
Bundle 'kshenoy/vim-signature'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdcommenter'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'tpope/vim-surround'
Bundle 'uirVeruultisnips'
Bundle 'honza/vim-snippets'
Bundle 'scrooloose/syntastic'
Bundle 'ervandew/supertab'
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-markdown'
"Bundle 'dyng/ctrlsf.vim'
"Bundle 'AutoComplPop'
"Bundle 'Shougo/neocomplcache'
"Bundle 'garbas/vim-snipmate'
"Bundle 'MarcWeber/vim-addon-mw-utils'
"Bundle 'tomtom/tlib_vim'
"Bundle 'sjl/gundo.vim'
"Bundle 'godlygeek/tabular'
"Bundle 'nathanaelkane/vim-indent-guides'
"Bundle 'humiaozuzu/TabBar'
"Bundle 'mileszs/ack.vim'
"Bundle 'kien/ctrlp.vim'
"Bundle 'tpope/vim-fugitive'
"Bundle 'bronson/vim-trailing-whitespace'
"Bundle 'nvie/vim-togglemouse'
Plugin 'iamcco/markdown-preview.vim'
Bundle 'nelstrom/vim-visual-star-search'
filetype plugin indent on

let g:Powerline_colorscheme='solarized256'
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "m-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "mda",
        \ 'PurgeMarkers'       :  "m<BS>",
        \ 'GotoNextLineAlpha'  :  "']",
        \ 'GotoPrevLineAlpha'  :  "'[",
        \ 'GotoNextSpotAlpha'  :  "`]",
        \ 'GotoPrevSpotAlpha'  :  "`[",
        \ 'GotoNextLineByPos'  :  "]'",
        \ 'GotoPrevLineByPos'  :  "['",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "[+",
        \ 'GotoPrevMarker'     :  "[-",
        \ 'GotoNextMarkerAny'  :  "]=",
        \ 'GotoPrevMarkerAny'  :  "[=",
        \ 'ListLocalMarks'     :  "ms",
        \ 'ListLocalMarkers'   :  "m?"
        \ }

nmap <Leader>fl :NERDTreeToggle<CR>
let NERDTreeWinSize=32
let NERDTreeWinPos="right"
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1
let tagbar_left=1 
nnoremap <Leader>tl :TagbarToggle<CR> 
let tagbar_width=32 
let g:tagbar_compact=1
let g:tagbar_type_cpp = {
    \ 'kinds' : [
        \ 'd:macros:1',
        \ 'g:enums',
        \ 't:typedefs:0:0',
        \ 'e:enumerators:0:0',
        \ 'n:namespaces',
        \ 'c:classes',
        \ 's:structs',
        \ 'u:unions',
        \ 'f:functions',
        \ 'm:members:0:0',
        \ 'v:global:0:0',
        \ 'x:external:0:0',
        \ 'l:local:0:0'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:syntastic_che_on_open=1
let g:syntastic_auto_jump=1
let g:syntastic_error_symbol = 'e>'
let g:syntastic_warning_symbol = 'w>'
let g:syntastic_always_populate_loc_list=1
let g:syntastic_loc_list_height = 6
let g:syntastic_enable_highlighting = 0
nmap <Leader>e :Errors<cr>
nmap <Leader>c :lnext<cr>
nmap <Leader>z :lpre<cr>

let g:SuperTabDefaultCompletionType = "<c-n>"

au FileType python let b:delimitMate_nesting_quotes = ['"']

autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

set foldmethod=syntax
set nofoldenable

let g:mkdp_path_to_chrome = "google-chrome"

    let g:mkdp_auto_start = 0

    let g:mkdp_auto_open = 0

    let g:mkdp_auto_close = 1

    let g:mkdp_refresh_slow = 0

    let g:mkdp_command_for_global = 0

if executable("vimtweak.dll") 
autocmd guienter * call libcallnr("vimtweak","SetAlpha",222) 
endif
