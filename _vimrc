set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

  call vundle#begin()
    Plugin 'gmarik/Vundle.vim'

    " My bundles here:
    Plugin 'railscasts'
    Plugin 'fugitive.vim'
    Plugin 'surround.vim'
    Plugin 'mru.vim'
    Plugin 'The-NERD-tree'
    Plugin 'The-NERD-Commenter'
    Plugin 'EasyMotion'
    Plugin 'L9'
    Plugin 'FuzzyFinder'
    Plugin 'AutoClose'
    Plugin 'JavaScript-syntax'
    Plugin 'pangloss/vim-javascript'

  call vundle#end()            " required


filetype plugin indent on    " required

syntax on

 " display
 " ----------------------
 " colorscheme railscasts
 set number " show line number
 set showmode " show mode
 set title " show filename
 set ruler
 set list " show eol,tab,etc...
 set listchars=tab:>-,trail:-,extends:>,precedes:< " eol:$
 set laststatus=2
 " set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
 set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
 
 " edit
 " ----------------------
 set autoindent
 set smartindent
 set expandtab
 set smarttab
 set tabstop=2 shiftwidth=2 softtabstop=0
 set showmatch " show mactch brace
 set wildmenu
 set clipboard=unnamed " share OS clipboard
 set autoread
 set hidden
 set showcmd
 set backspace=indent,eol,start
 
 highlight link ZenkakuSpace Error
 match ZenkakuSpace /　/
 
 " move
 " ----------------------
 nnoremap j gj
 nnoremap k gk
 set whichwrap=b,s,h,l,<,>,[,]
 
 " When insert mode, enable hjkl and enable go to home/end.
 imap <c-o> <END>
 imap <c-a> <HOME>
 imap <c-h> <LEFT>
 imap <c-j> <DOWN>
 imap <c-k> <UP>
 imap <c-l> <Right>
 
 " search
 " ----------------------
 set incsearch
 set ignorecase
 set smartcase
 " set hlsearch
 
 " no bell
 set visualbell
 set t_vb=
 
 " backup
 " --------------------
 set backup
 set backupdir=~/.vim/vim_backup
 set swapfile
 set directory=~/.vim/vim_swap
 
 " key map
 " --------------------
 let mapleader = ","
 noremap <CR> o<ESC>
 
 " auto command
 " --------------------
 augroup BufferAu
    autocmd!
    " change current directory
    autocmd BufNewFile,BufRead,BufEnter * if isdirectory(expand("%:p:h")) && bufname("%") !~ "NERD_tree" | cd %:p:h | endif
 augroup END
 
 " Plugin setting
 " --------------------
 
 " NEED Commenter
 let NERDShutUp = 1 "no alart undfined filetype
 
 " rails.vim

 " for javascript
 autocmd FileType javascript :compiler gjslint
 autocmd QuickfixCmdPost make copen
