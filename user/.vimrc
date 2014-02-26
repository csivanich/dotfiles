" Include default global config
source /etc/vimrc

" Start pathogen
" https://github.com/tpope/vim-pathogen
execute pathogen#infect()

" Default options
" https://wiki.archlinux.org/index.php/vim/.vimrc
colorscheme gruvbox 
" solarized
set background=dark
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set showcmd
set number
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase
set backspace=2
set autoindent
set textwidth=79
set ruler
set mouse=a
syntax on
filetype plugin indent on
set colorcolumn=+1        " highlight column after 'textwidth'

" Airline options
" https://github.com/bling/vim-airline
let g:airline_powerline_fonts = 1
set encoding=utf-8
set laststatus=2

autocmd vimenter * if !argc() | NERDTree | endif
map <TAB> :NERDTreeToggle<CR>
