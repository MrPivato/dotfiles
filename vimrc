let g:powerline_pycmd="py3"
set laststatus=2

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'NLKNguyen/pipe.vim' "required
"Plugin 'NLKNguyen/pipe-mysql.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'html_FileCompletion'

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Bundle 'jistr/vim-nerdtree-tabs'
"Plugin 'Valloric/YouCompleteMe'
"All of your Plugins must be added before the following line

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
" let g:NERDTreeDirArrowExpandable = '▸'
" let g:NERDTreeDirArrowCollapsible = '▾'

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

function! Smart_TabComplete()
        let line = getline('.')                         " current line

        let substr = strpart(line, -1, col('.')+1)      " from the start of the current
        " line to one character right
        " of the cursor
        let substr = matchstr(substr, "[^ \t]*$")       " word till cursor
        if (strlen(substr)==0)                          " nothing to match on empty string
                return "\<tab>"
        endif
        let has_period = match(substr, '\.') != -1      " position of period, if any
        let has_slash = match(substr, '\/') != -1       " position of slash, if any
        if (!has_period && !has_slash)
                return "\<C-X>\<C-P>" 
        elseif ( has_slash )
                return "\<C-X>\<C-F>"
        else
                return "\<C-X>\<C-O>"
        endif
endfunction
inoremap <tab> <c-r>=Smart_TabComplete()<CR>

colorscheme delek
syntax on
set tabstop=4
set softtabstop=4
set expandtab
set number
set showcmd
filetype indent on
set lazyredraw
set wildmenu
set showmatch
set incsearch
set hlsearch
set encoding=UTF-8
set relativenumber
set clipboard=unnamedplus
set matchpairs+=<:> 
set expandtab
set nobackup
set noswapfile
set foldlevel=99
set splitbelow
set splitright
set nowrap

map <C-c> :NERDTreeToggle<CR><C-g>

nnoremap > gt
nnoremap < gT

nnoremap + <C-A>
nnoremap - <C-X>

nnoremap j <C-W><C-J>
nnoremap k <C-W><C-K>
nnoremap l <C-W><C-L>
nnoremap h <C-W><C-H>

nnoremap <leader><space> :nohlsearch<CR>
nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>

"" tags html ----------------------------------------------------------------
autocmd FileType php,html inoremap <html <!DOCTYPE<Space>html><Enter><html><Enter><head><Enter><title></title><Enter><meta<Space>charset="UTF-8"><Enter><link<Space>rel="stylesheet"<Space>type="text/css"<Space>href="main.css"><Enter></head><Enter><body><Enter><Enter><Enter><Enter></body><Enter></html>

autocmd FileType php,html inoremap <h1 <h1></h1><Esc>
autocmd FileType php,html inoremap <h2 <h2></h2><Esc>
autocmd FileType php,html inoremap <h3 <h3></h3><Esc>
autocmd FileType php,html inoremap <h4 <h4></h4><Esc>
autocmd FileType php,html inoremap <h5 <h5></h5><Esc>
autocmd FileType php,html inoremap <h6 <h6></h6><Esc>

autocmd FileType php,html inoremap <br <br><Esc>

autocmd FileType php,html inoremap <str <strong></strong><Esc>
autocmd FileType php,html inoremap <em <em></em><Esc>
autocmd FileType php,html inoremap <a <a<Space>href=""></a><Space><Esc>

autocmd FileType php,html inoremap <p <p></p><Esc>
autocmd FileType php,html inoremap <div <div<Space>class=""></div><Esc>

autocmd FileType php,html inoremap <ol <ol><Enter><li></li><Enter></ol><Esc>
autocmd FileType php,html inoremap <ul <ul><Enter><li></li><Enter></ul><Esc>
autocmd FileType php,html inoremap <li <li></li><Esc>
autocmd FileType php,html inoremap <im <img<Space>src=""<Space>width=""<Space>height=""><Esc>
autocmd FileType php,html inoremap <td <td></td><Esc>
autocmd FileType php,html inoremap <tr <tr></tr><Esc>
autocmd FileType php,html inoremap <th <th></th><Esc>
autocmd FileType php,html inoremap <tab <table></table><Esc>
autocmd FileType php,html inoremap <dt <dt></dt><dd></dd><Esc>
autocmd FileType php,html inoremap <dl <dl></dl><Esc>
" ---------------------------------------------------------------------------------------------
