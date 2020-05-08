" Remap Escape
nnoremap ; :

"Enable syntax highlighting
syntax on

set shell=/bin/zsh

let mapleader = "'"

"" PLUGIN MANAGEMENT

packadd minpac
call minpac#init()

call minpac#add('junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' })
call minpac#add('junegunn/fzf.vim')
call minpac#add('neoclide/coc.nvim', {'do': { -> coc#util#install()}})
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('dense-analysis/ale')
call minpac#add('mattn/emmet-vim')

command! MinpacUpdate call minpac#update()
command! MinpacClean call minpac#clean()

" Pane navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Kill the arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

let g:python3_host_prog="usr/bin/python3"
let g:ale_fixers = {
	\ 'javascript': ['eslint'],
	\ 'css': ['prettier'],
	\}
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save = 1
