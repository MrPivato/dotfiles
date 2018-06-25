set tabstop=4
set softtabstop=4
set expandtab
set number
set showcmd
filetype indent on
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch

nnoremap <leader><space> :nohlsearch<CR>
nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>
