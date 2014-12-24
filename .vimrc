" vundle
set nocompatible
filetype off
set rtp+=~/.vim/vundle
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-sensible'
Plugin 'Raimondi/delimitMate'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
Plugin 'Shutnik/jshint2.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'nathanaelkane/vim-indent-guides'
Bundle 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

" solarized
set background=dark
colorscheme solarized

" tab stuff
set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab

" jsbeautify
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>

" javascript-syntax
" autocmd FileType javascript :call JavaScriptFold()<cr>

" delimitMate
" autocmd FileType javascript let b:delimitMate_expand_cr = 1
let g:delimitMate_expand_cr = 1

" experimental
" Use kj to exit insert mode
:inoremap kj <esc>
:inoremap <esc> <nop>
