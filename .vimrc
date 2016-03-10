"vimrc revised on March16 - acr
execute pathogen#infect()
"MUST BE ON TOP
set nocompatible "Use Vim settings, rather than Vi settings (much better!).
filetype plugin indent on
syntax on

"CONFIGURATIONS FOR PLUGINS
"SOLARIZED
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

"CAMELCASEMOTION
call camelcasemotion#CreateMotionMappings('<leader>')

"VIM-SURROUND

"BECAUSE I AM SPECIAL
:nnoremap <Space> <NOP>
let mapleader = "\<Space>"
:nnoremap <leader>r :source ~/.vimrc<CR>
":nnoremap <leader>r :w<CR>:source ~/.vimrc<CR>
:nnoremap <leader>f :nohlsearch<CR> 
:nnoremap <leader>w :w<CR> 
:nnoremap <leader>s :s/
"SPLIT CYCLING
:nnoremap <C-j> <C-w>j
:nnoremap <C-k> <C-w>k
:nnoremap <C-h> <C-w>h
:nnoremap <C-l> <C-w>l
:nnoremap <C-C-I> <C-w>w

"remaps esc to jk
"Insert mode, NOn REcursive MAPping
:inoremap jk <Esc>

"EVERYONE DOES THIS
"move vertically on wrapped lines
:nnoremap j gj
:nnoremap k gk
set backspace=indent,eol,start "allow backspacing over everything in insert mode
set history=200	"keep 50 lines of command line history
set ruler "show the cursor position all the time
set mouse=a "ratatouille
set encoding=utf8 "enconding
set hidden "allows changing from modified buffers without warning
set tabstop=4 "number of spaces per TAB
set softtabstop=4 "same as above, but on editing
set shiftwidth=4 "width of indents
set expandtab "make tabs equal to multiple spaces
set smarttab "funky stuff I don't know
set number "show line numbers
set showcmd "shows the last command in the bottom right bar
set wildmenu "visual autocomple for command menu
set showmatch "highlight matching for brackets {[(
set incsearch "search as characters are entered
set hlsearch "highlight matches
set smartcase
set ignorecase
set magic "does magic
