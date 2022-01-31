let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/autoload')
"" syntax highlighter
Plug 'sheerun/vim-polyglot'

"" status bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

"" theme
Plug 'joshdick/onedark.vim'

"" explorer
Plug 'scrooloose/nerdtree'

"" editor
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

"" tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

"" ide utils
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-repeat'

call plug#end()


set nocompatible

filetype indent plugin on

syntax on

" ui
set wildmenu
set showcmd
set cmdheight=1
set laststatus=2
set ruler
set visualbell
set mouse=a
set noshowmode

" Editor
set number
set relativenumber
set nostartofline
set cursorline
set encoding=utf-8
set showmatch
colorscheme onedark
set background=dark

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Indentation
set autoindent
set shiftwidth=4
set softtabstop=4
set expandtab

" Misc
set confirm

" Keyboard
let mapleader=" "

"" resize panels
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

"" end line
nnoremap <Leader>; $a;<Esc>

"" misc
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

"" ide
nmap <Leader>e :NERDTreeFind<CR>
nmap <Leader><C-p> :Files<CR>
nmap <Leader><C-f> :Ag<CR>
nmap <Leader><C-e> :Buffers<CR>

"" tmux
nnoremap <silent> <Leader><C-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <Leader><C-j> :TmuxNavigateDown<CR>
nnoremap <silent> <Leader><C-k> :TmuxNavigateUp<CR>
nnoremap <silent> <Leader><C-l> :TmuxNavigateRight<CR>
