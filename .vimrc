"---------------Pathogen-----------------"
"Install instructions : https://github.com/tpope/vim-pathogen
filetype off
execute pathogen#infect()
filetype plugin indent on

"---------------General-----------------"
syntax enable
let mapleader = ","
set backspace=indent,eol,start
"numerote les lignes : attention, cette option pose pb lors de copier coller à la souris !
"set number
"empeche la retrocompatibilité avec vi...pas le peine !
set nocompatible
"prevents some security exploits having to do with modelines in files
set modelines=0
"Permet d'annuler une modif même après fermeture d'un fichier
set undofile

set makeprg=npm\ test

"Enable the 256 color pallet
set t_Co=256
"let Vim know we want a dark background and light foreground
set background=dark

"---------------Netrw----------------"
"Tree style for file browsing
let g:netrw_liststyle = 3
"Remove the banner (useless tips commands)
let g:netrw_banner = 0
"Open a file by default in vsplit (1 split, 2 vsplit, 3 new tab, 4 previous
"window)
let g:netrw_browse_split = 4
let g:netrw_altv = 1
"default netrw tree default size
let g:netrw_winsize = 25

"---------------Tabs-----------------"
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

"---------------hjkl-----------------"
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
"nnoremap j gj
"nnoremap k gk


"---------------Save when loosing focus-----------------"
au FocusLost * :wa


"---------------Visual-----------------"

colorscheme desert

"---------------Search-----------------"
set ignorecase
set smartcase
set hlsearch
set incsearch

"---------------Mappings---------------"
"Permet de virer l'highlight de recherche
nmap <Leader><space> :nohlsearch<cr>
"make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>
"Ouvre/ferme NerdTree
nmap <C-n> :NERDTreeToggle<cr>
"Indentation sur tab
nmap <Tab> >>
nmap <S-Tab> <<
vmap <Tab> >gv
vmap <S-Tab> <gv

"-------------Auto-Commands--------------"

"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
"autocmd BufEnter * silent! lcd %:p:h
