
" vim: set foldmethod=marker foldlevel=0 nomodeline:

" =============================================================================
" Escaping {{{1
" =============================================================================

" Insert mode
inoremap jk <esc>

" Visual mode
xnoremap fd <esc>

" Ex command-line mode
cnoremap jk <c-c>

" }}}1
" =============================================================================
" Navigating splits {{{1
" =============================================================================

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" }}}1
" =============================================================================
" Leader {{{1
" =============================================================================

let g:mapleader=' '      " Regular leader
let g:maplocalleader=' ' " Local  leader

" }}}1
" =============================================================================
" Easy enter into command line mode {{{1
" =============================================================================

" Normal mode
nnoremap ; :
nnoremap : ;

" Visual mode
xnoremap ; :
xnoremap : ;

" }}}1
" =============================================================================
" Save {{{1
" =============================================================================

nnoremap <c-s> :w<cr> " Save in normal mode
inoremap <c-s> :w<cr> " Save in insert mode too

" }}}1
" =============================================================================
" Quit {{{1
" =============================================================================

nnoremap <c-q> :wq<cr> " Save and quit in normal mode
inoremap <c-q> :wq<cr> " Save and quit in insert mode too

" }}}1
" =============================================================================
" Markdown headings {{{1
" =============================================================================

nnoremap <leader>1 0i#<space><esc>0
nnoremap <leader>2 0i##<space><esc>0
nnoremap <leader>3 0i###<space><esc>0
nnoremap <leader>4 0i####<space><esc>0
nnoremap <leader>5 0i#####<space><esc>0
nnoremap <leader>6 0i######<space><esc>0

" }}}1
" =============================================================================
" Thesaurus {{{1
" =============================================================================

" Use <space>d on top of a word to look it up in Dictionary.app
nnoremap <leader>d :!open dict://<cword><cr><cr>

" }}}1
" =============================================================================
" Folds {{{1
" =============================================================================

nnoremap , za

" }}}1
" =============================================================================
" Upper-case current word {{{1
" =============================================================================

inoremap <c-u> <esc>lviwUea
nnoremap <c-u> viwUe

" }}}1
" =============================================================================

" }}}1
" =============================================================================
