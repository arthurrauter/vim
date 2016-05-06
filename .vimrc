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
:set relativenumber
let mapleader = "\<Space>"
:nnoremap <leader>r :w<CR>:source $MYVIMRC<CR>
:nnoremap <leader>f :nohlsearch<CR> 
:nnoremap <leader>s :s/

"split cycling
:nnoremap <C-j> <C-w>j
:nnoremap <C-k> <C-w>k
:nnoremap <C-h> <C-w>h
:nnoremap <C-l> <C-w>l
":nnoremap <C-C-I> <C-w>w

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

"funky MAPPINGS, here we go:
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>Gzz
"wrap in quotes
:nnoremap <leader>" ea"<esc>bi"<esc>lel
"wrap visual selection in quotes
:vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>
"beginning of the line, end of the line moves
:nnoremap <leader>l $
:nnoremap <leader>h ^

:augroup javagroup
:autocmd!
:autocmd FileType java :setlocal nonu
:autocmd FileType java :nnoremap <buffer> <leader>/ 0i//<esc>
:autocmd InsertLeave * :w
:autocmd FileType java :iabbrev <buffer> ret return;<left>
:autocmd FileType java :iabbrev <buffer> CONST public static final;<left>
:autocmd FileType java :iabbrev <buffer> pub public
:augroup END

:onoremap <leader>l $
:onoremap <leader>h 0
:onoremap in( :<c-u>normal! f(vi(<cr>
:onoremap an( :<c-u>normal! f(va(<cr>

"au for Markdown {{{
:augroup markdow
:autocmd!
:autocmd FileType markdown :onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>
:autocmd FileType markdown :onoremap ah :<c-u>execute "normal! ?^--\\+$\r:nohlsearch\rkvg_"<cr>
:augroup END
"}}}

:onoremap in@ :<c-u>execute "normal! /.@\S*\.\S*\r:noh\rBvt@"<cr>

:set statusline=%f
:set statusline+=\ 
:set statusline+=%y
:set statusline+=\ 
:set statusline+=%=
:set statusline+=%l,%c\ (%L)
