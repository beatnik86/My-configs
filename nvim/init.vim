" Some sensible defaults -- {{{
set wrap
set shiftround
set showmatch matchtime=3
set hidden
set shiftwidth=2
set tabstop=4
set expandtab
set foldlevel=1
" }}}

" Builtin file browser -- {{{
let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_winsize=25
"inoremap <f12> :Vexplore<cr>
" }}}

" Key mappings -- {{{
let mapleader=","
let maplocalleader="\\"
"Open file explorer
inoremap <f12> :Vexplore<cr>
"Open vim configuration
nnoremap <leader>ev :split $MYVIMRC<cr>
"Source vim configuration
nnoremap <leader>sv :source $MYVIMRC<cr>
"Convert word to uppercase
inoremap <leader>u <esc>viwU<esc>ea
nnoremap <leader>u viwU<esc>e
" }}}

" Abbreviations -- {{{
iabbrev @@ emptykatharsis@gmail.com
" }}}

" C file settings -- {{{
augroup filetype_c
  autocmd!
  autocmd FileType    c   nnoremap    <buffer>    <localleader>c  I//<esc>
  autocmd FileType    c  :iabbrev chead #include <stdio.h><cr><cr>int main() {<cr>  return 0;<cr>}<esc>kO
augroup END
" }}}

" Learn Vimscript
augroup filetype_javascript
  autocmd!
  autocmd   FileType    javascript  nnoremap    <buffer>    <localleader>c  I//<esc>
augroup END

augroup filetype_pyton
  autocmd!
  autocmd   FileType    python  nnoremap    <buffer>    <localleader>c  I#<esc>
augroup END

" Vimscript file settings -- {{{
augroup filetype_vim
  autocmd!
  autocmd   FileType    vim setlocal    foldmethod=marker
  autocmd   FileType    vim nnoremap    <buffer>    <localleader>c  I"\ <esc>
augroup END
" }}}

" Status line -- {{{
set statusline=%F       " Full file path
set statusline+=%m      " Modified flag
set statusline+=%r      " Readonly flag
set statusline+=%=      " Switch to right side
set statusline+=%y       " FileType
set statusline+=\ -\ [  " Separator
set statusline+=%l      " Current line
set statusline+=/       " Separator
set statusline+=%L      " Total lines
set statusline+=,\      " Separator
set statusline+=%c      " Column
set statusline+=]\      " Looks pretty
set statusline+=%p      " Percentage through file
set statusline+=%%      " Percentage symbol
" }}}
