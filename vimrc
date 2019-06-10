set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ayu-theme/ayu-vim'
Plugin 'junegunn/seoul256.vim'
Plugin 'ascenator/L9', {'name': 'newL9'}
Bundle 'bitfyre/vim-indent-html'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plugin 'scrooloose/syntastic'
Plugin 'rust-lang/rust.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'tomtom/tcomment_vim'
Plugin 'ervandew/supertab'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()            " required
filetype plugin indent on    " required

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:powerline_pycmd="py3"
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16_isotope'

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

if has('mouse')
  set mouse=a
endif

colorscheme mycontrast
syntax on
filetype indent on
set smartindent
set tabstop=4
set softtabstop=4
set expandtab
set number
set showcmd
set lazyredraw
set wildmenu
set showmatch
set incsearch
set hlsearch
set encoding=UTF-8
set relativenumber
set clipboard=unnamedplus
set matchpairs+=<:> 
set nobackup
set noswapfile
set foldlevel=99
set splitbelow
set splitright
set nowrap

command! -bang E e<bang>
command! -bang Q q<bang>
command! -bang W w<bang>
command! -bang QA qa<bang>
command! -bang Qa qa<bang>
command! -bang Wa wa<bang>
command! -bang WA wa<bang>
command! -bang Wq wq<bang>
command! -bang WQ wq<bang>

map <C-c> :NERDTreeToggle<CR><C-g>

"nnoremap > gt
"nnoremap < gT

nnoremap + <C-A>
nnoremap - <C-X>

nnoremap h <C-W><C-H>
nnoremap j <C-W><C-J>
nnoremap k <C-W><C-K>
nnoremap l <C-W><C-L>

nnoremap <leader><space> :nohlsearch<CR>

map <F7> : !g++ % && ./a.out <CR>
map <F8> : !gcc % && ./a.out <CR>
nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>
map <F10> :w<CR> :!clear; make<CR> :!./%<<CR>

"" tags html ----------------------------------------------------------------
autocmd FileType php,html inoremap <html <!DOCTYPE<Space>html><Enter><html><Enter><head><Enter><title></title><Enter><meta<Space>charset="UTF-8"><Enter><link<Space>rel="stylesheet"<Space>type="text/css"<Space>href="main.css"><Enter></head><Enter><body><Enter><Enter><Enter><Enter></body><Enter></html>
" ---------------------------------------------------------------------------
