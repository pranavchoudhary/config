" ============================================================================ "
" ===                               PLUGINS                                === "
" ============================================================================ "

" check whether vim-plug is installed and install it if necessary
let plugpath = expand('<sfile>:p:h'). '/autoload/plug.vim'
if !filereadable(plugpath)
    if executable('curl')
        let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        call system('curl -fLo ' . shellescape(plugpath) . ' --create-dirs ' . plugurl)
        if v:shell_error
            echom "Error downloading vim-plug. Please install it manually.\n"
            exit
        endif
    else
        echom "vim-plug not installed. Please install it manually or install curl.\n"
        exit
    endif
endif

call plug#begin('~/.config/nvim/plugged')
" Intellisense Engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" vim-go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Customized vim status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" File explorer
Plug 'scrooloose/nerdtree'

" Icons
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Integration with version control systems
Plug 'airblade/vim-gitgutter'
Plug 'https://tpope.io/vim/fugitive.git'

" Fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Shougo/unite.vim'

call plug#end()
