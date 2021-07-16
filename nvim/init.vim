source ~/.config/nvim/plugins.vim

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting


" Setting an alternate destination for swap and backup files. This help to
" keep the current working directory clean and also ensures that the
" oh-by-bash pluging does not report git untracked files
" tell vim to keep a backup file
set backup
" Create the director (if it does not exist) where the backup and swap files
" will be created
if !isdirectory($HOME . "/.vim/tmp")
   call mkdir($HOME . "/.vim/tmp", "p")
endif
" tell vim where to put its backup files
set backupdir=$HOME/.vim/tmp
" tell vim where to put swap files
set dir=$HOME/.vim/tmp


" Make a buffer hidden while navigating away from it. This ensures that you
" don't have to save the buffer everytime you navigate away
set hidden


" === Vim airline ==== "
try
    " Enable powerline fonts
    let g:airline_powerline_fonts = 1
catch
    echo 'Airline not installed. Try :PlugInstall'
endtry

" === NerdTree ===
" NerdTree window size (width). The default(31) is not enough
let g:NERDTreeWinSize=40

" Shortcuts for NERDTree plugin
noremap <leader>tt :NERDTreeToggle<cr>
noremap <leader>tf :NERDTreeFind<cr>


" === Misc ===
" Reload icons after init source
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif

