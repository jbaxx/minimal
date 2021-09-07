" ==========================================================================
" Plugins
" ==========================================================================

" If Vim Plug not recognized try: call plug#begin('~/.vim/plugged')
call plug#begin()

" Airline - Lightweight Powerline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" " colorschemes
" " Plug 'mhartington/oceanic-next'
" Plug 'arcticicestudio/nord-vim'
" Plug 'flrnprz/candid.vim'
" Plug 'lithammer/vim-eighties'
" Plug 'dracula/vim'
" Plug 'jnurmine/Zenburn'
" Plug 'nanotech/jellybeans.vim'
" Plug 'kristijanhusak/vim-hybrid-material'
" Plug 'morhetz/gruvbox'
" Plug 'kaicataldo/material.vim'
" Plug 'chriskempson/base16-vim'
" Plug 'jbaxx/oceanic-next'
" Plug 'jacoborus/tender.vim'

call plug#end()

" ==========================================================================
" Settings
" ==========================================================================

" fix color issues on tmux (usually on ssh hosts)
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

" set termguicolors
color nord
color candid

" set linespace=0
set hlsearch " Highlight all search results
set incsearch " Highlight dynamically word input on search bar

set ignorecase " Searches case insensitive
set smartcase  " If search contains at least an uppercase set ignorecase not enforced

set encoding=utf-8 " Encoding

set nu " Line numbering + rnu shows current line num on top instead of 0
set rnu " Relative line numbering

set splitbelow " For sp split below to current file
set splitright " For vs split right to current file

set wildmenu " Enables menu completion for Ex Commands
set wildmode=list,full " Lists all matches no completes, then browses through each full match

set expandtab
set tabstop=4
set shiftwidth=4

set modelines=0
set nomodeline

set showcmd " Show operator in Operator-Pending Mode

set list lcs=trail:·,tab:»·
set nolist
" ":set listchars=space:␣,tab:>· list

" ==========================================================================
" Custom Mappings
" ==========================================================================

let mapleader=","

nnoremap <leader>j 5j

nnoremap <leader>re :vsplit $MYVIMRC<CR>
nnoremap <leader>rs :source $MYVIMRC<CR>
let g:airline_theme='nord'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
