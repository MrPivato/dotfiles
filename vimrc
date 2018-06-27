set nocompatible
filetype plugin on
syntax on
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
set encoding=utf-8
"set relativenumber

nnoremap <leader><space> :nohlsearch<CR>
nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>

nnoremap <Space><Space> <Esc>/<++><Enter>"_c4l

" tags html ----------------------------------------------------------------
autocmd FileType php,html inoremap <html <!DOCTYPE><Enter><html><Enter><head><Enter><title><++></title><Enter><meta<Space>charset="UTF-8"><Enter><link<Space>rel="stylesheet"<Space>type="text/css"<Space>href="main.css"><Enter></head><Enter><body><Enter><Enter><++><Enter><Enter></body><Enter></html>

autocmd FileType php,html inoremap <h1 <h1></h1><Enter><Enter><++><Esc>2kf<i
autocmd FileType php,html inoremap <h2 <h2></h2><Enter><Enter><++><Esc>2kf<i
autocmd FileType php,html inoremap <h3 <h3></h3><Enter><Enter><++><Esc>2kf<i
autocmd FileType php,html inoremap <h4 <h4></h4><Enter><Enter><++><Esc>2kf<i
autocmd FileType php,html inoremap <h5 <h5></h5><Enter><Enter><++><Esc>2kf<i
autocmd FileType php,html inoremap <h6 <h6></h6><Enter><Enter><++><Esc>2kf<i

autocmd FileType php,html inoremap <b <strong></strong><Space><++><Esc>FbT>i
autocmd FileType php,html inoremap <i <em></em><Space><++><Esc>FeT>i

autocmd FileType php,html inoremap <p <p></p><Enter><Enter><++><Esc>02kf>a
autocmd FileType php,html inoremap <div <div<Space>class="<++>"></div><Enter><Enter><++><Esc>02kf>a

autocmd FileType php,html inoremap <a <a<Space>href=""><++></a><Space><++><Esc>14hi
autocmd FileType php,html inoremap <e <a<Space>target="_blank"<Space>href=""><++></a><Space><++><Esc>14hi
autocmd FileType php,html inoremap <ul <ul><Enter><li></li><Enter></ul><Enter><Enter><++><Esc>03kf<i
autocmd FileType php,html inoremap <li <Esc>o<li></li><Esc>F>a
autocmd FileType php,html inoremap <ol <ol><Enter><li></li><Enter></ol><Enter><Enter><++><Esc>03kf<i
autocmd FileType php,html inoremap <im <img<Space>src="<++>"<Space>width="<++>"<Space>height="<++>">
autocmd FileType php,html inoremap <td <td></td><++><Esc>Fdcit
autocmd FileType php,html inoremap <tr <tr></tr><Enter><++><Esc>kf<i
autocmd FileType php,html inoremap <th <th></th><++><Esc>Fhcit
autocmd FileType php,html inoremap <tab <table><Enter></table><Esc>O
autocmd FileType php,html inoremap <dt <dt></dt><Enter><dd><++></dd><Enter><++><esc>2kcit
autocmd FileType php,html inoremap <dl <dl><Enter><Enter></dl><enter><enter><++><esc>3kcc
" ---------------------------------------------------------------------------------------------
