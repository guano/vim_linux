set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"	Plugin 'ervandew/supertab'

	Plugin 'scrooloose/nerdtree'
	Plugin 'Xuyuanp/nerdtree-git-plugin'
	
"	Why doesn't this status bar always work?
	Plugin 'vim-airline/vim-airline'

"	This looks fun to use
	Plugin 'easymotion/vim-easymotion'

"	SearchComplete. Tab completion inside of search
"	Plugin 'vim-scripts/SearchComplete'

" Highlight words and stuff
"	Plugin 't9md/vim-quickhl'

"   Auto linter. Let's see how it looks
"   ERORR: requires vim 8; not updated on nova yet
"    Plugin 'w0rp/ale'

" Supposed to be like elflord but better
	Plugin 'agude/vim-eldar'

" One I saw on vim-colors that looks good
	Plugin 'gkjgh/cobalt'

" I am told this is awesome but I don't have time to look at it right now
"   Plugin 'junegunn/fzf.vim'

"   Should be good stuff for verilog
    Plugin 'vhda/verilog_systemverilog.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"	quickhl setup
"	I forget what all this does. Needs learning
"nmap <Space>m <Plug>(quickhl-manual-this)
"xmap <Space>m <Plug>(quickhl-manual-this)
"nmap <Space>M <Plug>(quickhl-manual-reset)
"xmap <Space>M <Plug>(quickhl-manual-reset)

"nmap <Space>j <Plug>(quickhl-cword-toggle)
"nmap <Space>] <Plug>(quickhl-tag-toggle)
"map H <Plug>(operator-quickhl-manual-this-motion)
":QuickhlCwordEnable




set shell=bash

set tabstop=4
set shiftwidth=4
set expandtab "FOR WORK WE USE SPACES, NOT TABS
"set autoindent on
"set filetype indent on
"set guifont=Monospace:h11

syntax on
set foldmethod=syntax
autocmd FileType python setlocal foldmethod=indent
"set foldcolumn=4 "(or 1)

set number
set backspace=2

"	This, among other things, will display the leader key when I press it.
set showcmd

"	Instead of beeping, I want it to flash
set visualbell

"	I always want my status bar, not just when there is a split!
set laststatus=2

"	highlight search on.
set hlsearch

"	This makes it so that you the cursor doesn't hang out at the bottom of the
"	screen; it auto-scrolls the page with it! At EOF, push zz instead
set scrolloff=10 "by 10 lines


""""""""""""""""""""""''''''''''''''''''''
" Color settings
"	elflord
colorscheme cobalt
if has('gui_running')
    colorscheme eldar
endif
"	sets the background color for hilighted text to be darker than normal
"	but only for gvim. not for terminal vim. I prefer cobalt in terminal vim,
"	but may want to change the highlight color later
hi Visual guibg=#444444 
hi Folded guibg=#222222

"   Highlights the 80th column and changes the color to a very dull gray
"   For color options look up "xterm-256-color chart"
set colorcolumn=80
hi colorcolumn ctermbg=234
" a very dark light blue
hi colorcolumn guibg=#111126
hi folded ctermbg=023
"   I got tired of the withe hilighting of text. A more gray makes the cursor
"   more visible
hi Visual ctermbg=246
hi Search ctermbg=32


"   This hilights trailing spaces (among other things) in C code
let c_space_errors = 1


"   This lets the mouse work in terminal vim like it does in gvim.
"   2 downsides: it lets you use the mouse (bad form) and copy/paste no longer 
"   works (hilighting with mouse goes into visual mode)
"   sometimes I get weird hilight errors with cobalt, but I am pretty sure
"   that just happens when I use the mouse in terminal vim without the
"   following set. Will update if it keeps happening.
"   UPDATE- to copy/paste use \"+y and \"+p instead of y and p
set mouse=a


