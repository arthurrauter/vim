"execute plugin manager
execute pathogen#infect()

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype plugin indent on

"syntax highlighting
syntax on

"solarized
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

"unmaps space
:nnoremap <space> <nop>
"further referenced as <Leader>, it is a fancy keyword
let mapleader = "\<Space>"
"goes to next uppercaseCharacter
":nmap <leader>w /[A-Z]<CR>:nohlsearch<CR>

"enconding
set encoding=utf8

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

"remaps esc to jk
"Insert mode, NOn REcursive MAPping
:inoremap jk <Esc>

set hidden "allows changing from modified buffers without warning
set tabstop=4 "number of spaces per TAB
set softtabstop=4 "same as above, but on editing
set shiftwidth=4 "width of indents
set expandtab "make tabs equal to multiple spaces
set smarttab "funky stuff I don't know
set number "show line numbers
set showcmd "shows the last command in the bottom right bar
"set cursorline "highlight the cursos lin0
set wildmenu "visual autocomple for command menu
"set lazyredraw "does not redraws during macros
set showmatch "highlight matching for brackets {[(
set incsearch "search as characters are entered
"set hlsearch "highlight matches
set smartcase
set ignorecase
set magic "does magic
"turn off the highlight
nnoremap <leader>f :nohlsearch<CR> 

"reload vimrc whenever the buffer is written
autocmd! bufwritepost .vimrc source %
"source vimrc again
:nnoremap <leader>r :source ~/.vimrc<CR>

"insert new lines without leaving normal mode
:nnoremap <leader>o o<esc>
:nnoremap <leader>O O<esc>
"some funny comment
"save with leader s
nnoremap <leader>s :w<CR> 

"hereIsSomeCamelCase huehueheuheuheuehHEEHEHEHEHEhuehueheuheuheuEHEHHEHEHE
call camelcasemotion#CreateMotionMappings('<leader>')

"move vertically on wrapped lines
nnoremap j gj
nnoremap k gk

set history=200		" keep 50 lines of command line history

set ruler		" show the cursor position all the time
set mouse=a

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " Convenient command to see the difference between the current buffer and the
  " file it was loaded from, thus the changes you made.
  " Only define it when not defined already.
  if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
                   \ | wincmd p | diffthis
  endif

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

endif " has("autocmd")

