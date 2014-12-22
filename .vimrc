" pathogen
execute pathogen#infect()

" solarized
" syntax enable
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
