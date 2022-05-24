
" Plugins
call plug#begin()
Plug 'scrooloose/nerdtree'           " side bar file tree
Plug 'itchyny/lightline.vim'         " minimal status bar
Plug 'tpope/vim-fugitive'            " allows git commands in vim session
Plug 'airblade/vim-gitgutter'        " shows git changes in gutter
Plug 'KKPMW/vim-sendtowindow'        " send commands to REPL
Plug 'ncm2/ncm2'                     " completion [dep]: nvim-0.2.2, nvim-yarp, python3
Plug 'gaalcaras/ncm-R'               " R completion [dep]: ncm2, Nvim-R
Plug 'jalvesaq/Nvim-R'               " required for ncm-R
call plug#end()


" --------------------
" CUSTOM CONFIGURATION
" --------------------

  colorscheme candyman

  syntax enable
  syntax on
  filetype indent plugin on

  " ------------
  " VIM SETTINGS
  " ------------
  set autoindent
  set expandtab
  set hidden
  set history=1000
  set ignorecase
  set nocompatible
  set number
  set numberwidth=4
  set ruler
  set shell=/bin/bash
  set smartcase
  set tabstop=2
  set softtabstop=2
  set encoding=utf-8
  "set cursorline
  set textwidth=120
  "set colorcolumn=120
  set t_Co=256

" --------
" MAPPINGS
" --------
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>

nnoremap j gj
nnoremap k gk

nnoremap ; :

" Switch between / delete buffers
noremap <tab> :bn<CR>
noremap <S-tab> :bp<CR>
nmap <leader>d :bd<CR>
nmap <leader>D :bufdo bd<CR>
nmap <silent> <leader>b :FufBuffer<CR>

" Paste mode
set pastetoggle=<F2>

" SpellCheck Portugues
au! BufNewFile,BufRead * let b:spell_language="brazilian"
map <F7> :SpellCheck<CR>
map <F8> :SpellProposeAlternatives<CR>
let spell_auto_type="tex,doc,mail,srt"

