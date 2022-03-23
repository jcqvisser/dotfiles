" PLUG
" install with:
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin()
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'tpope/vim-sensible'
  "Plug 'nightsense/snow'
  Plug 'leafgarland/typescript-vim'
  Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf.vim'
  "Plug 'slim-template/vim-slim'
  Plug 'tpope/vim-fugitive'
call plug#end()

" IMPORTANT
set encoding=utf-8
filetype plugin indent on
syntax enable

" REMOVE TRAILING WHITESPACE WHEN SAVING
let filetypes_not_to_remove_whitespace_from=['vim']
augroup neccesities
  autocmd!
  autocmd BufWritePre * if index(filetypes_not_to_remove_whitespace_from, &ft) < 0 | autocmd BufWritePre <buffer> %s/\s\+$//e
augroup END

" IRRESPONSIBLE
" prevents writing ~other~ files
set nobackup
set nowritebackup
set noswapfile
set noundofile

" CLIPBOARD FIX
if has('mac')
  set clipboard=unnamed
elseif has('unix')
  " more might be required
  set clipboard=unnamedplus
end

" GIT
augroup git_settings
  autocmd!
  autocmd FileType gitcommit set spell 
augroup END

" INDENTATION
set tabstop=2
set shiftwidth=2
set expandtab

" LOOKS 
hi CursorLine gui=NONE cterm=NONE guibg=Gray ctermbg=Gray
set number
set nowrap
set nocompatible
set t_Co=256
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"
set termguicolors
set term=xterm-256color
set fillchars+=vert:\ 
" colorscheme snow

" SHORTCUTS
let mapleader = "\<Space>"

" SPLIT NAVIGATION
nnoremap <C-j> <C-W><C-j>
nnoremap <C-k> <C-W><C-k>
nnoremap <C-l> <C-W><C-l>
nnoremap <C-H> <C-W><C-H>

" TABS
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>o :tabonly<CR>

" SEARCH HIGHLIGHT
set hlsearch
nnoremap <leader>h :noh<CR>

" BUFFERS
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprev<CR>
nnoremap <leader>bd :bd<CR>

" NERDTREE
map <leader>n :NERDTreeToggle<CR>

" FZF
map <leader>p :FZF<CR>
map <leader>f :NERDTreeFind<CR>

" MISC
nnoremap <leader>c :let @+ = expand("%")<CR>

" REMOVE WHITESPACE
" autocmd BufWritePre * %s/\s\+$//e

set synmaxcol=128
syntax sync minlines=256

nnoremap <leader>b Abinding.pry<esc>


