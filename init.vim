"vim.plug plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'neanias/everforest-nvim', { 'branch': 'main' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'editorconfig/editorconfig-vim'
Plug 'xolox/vim-misc'
Plug 'plasticboy/vim-markdown'
Plug 'junegunn/fzf.vim'

call plug#end() " run :PlugInstall on fresh install

" theme setting
colorscheme everforest

" statusline
set statusline=%f
set statusline+=%m
set statusline+=%r
set statusline+=%=
set statusline+=[
set statusline+=%l
set statusline+=/
set statusline+=%L 
set statusline+=]

" tabline - TODO: not sure how this works, could improve
set showtabline=1
"set tabline=%n/ %t
"set tabline=%!MyTabLine()
set guitablabel=%t\ %n

" general settings
set nonumber
set tabstop=8
set shiftwidth=4
set softtabstop=4
set expandtab
"set autoindent     " personal pref, uncomment to enable
"set smartindent    " personal pref, uncomment to enable
set ignorecase
set nowrap
set cursorline
set mouse=a
set incsearch
set hlsearch
set scrolloff=8
set vb t_vb=
set showmode
set laststatus=2    "always show statusline
set sidescroll=6
set listchars+=precedes:<,extends:>

syntax on

" disables markdown heading folding (#H1, ##H2, etc) 
let g:vim_markdown_folding_disabled = 1 

" file management 
set backup
set undofile
set backupdir=~/.config/nvim/backup//
set undodir=~/.config/nvim/backup//

" buffer stuff
set hidden
set confirm
set autowriteall
set wildmenu wildmode=full

" split stuff
set splitright
set splitbelow

" file recognition
filetype on
filetype plugin on
filetype indent on

"""" keymaps
let mapleader=";"

inoremap jk <Esc> 
" double tap ;; to esc

noremap <silent> <leader>t :NERDTreeToggle<CR>
noremap <silent> <leader>n :set number! number?<CR>
noremap <silent> <leader>/ :set wrap! wrap?<CR>
noremap <silent> <leader>w :w<CR>
noremap <silent> <leader>wq :wq<CR>
noremap <silent> <leader>q :q!<CR>
noremap <silent> <leader>l :vsplit<CR>
noremap <silent> <leader>k :split<CR>
noremap <silent> <leader>. :+tabnext<CR>
noremap <silent> <leader>, :-tabnext<CR>
noremap <silent> <leader>## :$tabnew<CR>
" noremap <silent> <leader>
