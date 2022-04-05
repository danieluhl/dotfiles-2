
let mapleader=","

" Quickfix lists
nnoremap <leader>co :copen<cr>
nnoremap <leader>cl :ccl<cr>
nnoremap <leader>n :cn<cr>
nnoremap <leader>p :cp<cr>

" Error Navigation
nnoremap <leader>en :lnext<cr>
nnoremap <leader>ep :lprev<cr>
nnoremap <leader>eo :lopen<cr>
nnoremap <leader>ec :lclose<cr>

" fix shift-a for visual-block select
xnoremap A $A

" Autocmd
autocmd Filetype python map <buffer> <leader>go :w<cr>:exec '!python3' shellescape(@%, 1)<cr>

" Not sure what this does
set path+=**

" Nice menu when typing `:find *.py`
set wildmode=longest,list,full
set wildmenu

" Ignore files
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

" Colors
set termguicolors
syntax enable

" Other Settings
set number
set relativenumber
set tabstop=2
set shiftwidth=2
set smartindent
set scrolloff=8
set expandtab
set nohlsearch
set ignorecase
set smartcase
set laststatus=2
set incsearch
set noerrorbells
set colorcolumn=80
set signcolumn=yes
set updatetime=500
set backspace=indent,eol,start

" Copy visual selection to clipboard
xnoremap <leader>y "+y

" window mgmt
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
" nnoremap <leader>wv <C-w>v<C-w>l
" nnoremap <leader>ws <C-w>s<C-w>j
" nnoremap <leader>wo <C-w><C-o>
" nnoremap <leader>e <cmd>Lex<cr>
nnoremap <leader>e <cmd>Explore<cr>
nnoremap <leader>vl <cmd>vertical resize 40<cr>
nnoremap <leader>wb <cmd>bd<cr>
nnoremap <C-b> <cmd>bprev<cr>
nnoremap <C-n> <cmd>bnext<cr>

" Movements
nnoremap <S-j> 5j
nnoremap <S-k> 5k

" Saving and quitting
nnoremap <leader>w <cmd>w<cr>
nnoremap <leader>wq <cmd>wq<cr>
nnoremap <leader>q <cmd>q<cr>

" Moving Lines
nnoremap <A-j> :m .+1<cr>
nnoremap <A-k> <cmd>m .-1<cr>
nnoremap <C-e> 5<C-e>
nnoremap <C-y> 5<C-y>

" insert mode mappings
inoremap <C-d> <del>


" visual mode mappings
vnoremap gg <esc>gg<S-v>G

call plug#begin(stdpath('data') . '/plugged')

  " from helloitsjoe
  Plug 'airblade/vim-gitgutter'
  Plug 'sheerun/vim-polyglot'
  Plug 'tpope/vim-fugitive'

  " LSP (language server) business
  Plug 'neovim/nvim-lspconfig'

  " telescope for file nav
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'

  " Neovim Tree shitter
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-treesitter/playground'

  " prettier
  Plug 'dense-analysis/ale'

  " color theme
  Plug 'haishanh/night-owl.vim'

  " My Plugins
  Plug 'vim-scripts/ReplaceWithRegister'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'

  " Maybe Future Things I Want
  " Plug 'github/copilot.vim'

call plug#end()

" telescope
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <C-f> <cmd>Telescope live_grep<cr>
nnoremap <leader>fg <cmd>Telescope git_files<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fl <cmd>Telescope live_grep<cr>
nnoremap <leader>fs <cmd>Telescope grep_string<cr>

" ALE (linting and prettier)
let g:ale_linters = { 'javascript': ['eslint'] }
let g:ale_fixers = { 'javascript': ['prettier'], 
      \ 'javascriptreact': ['prettier'], 
      \ 'typescriptreact': ['prettier'], 
      \ 'typescript.tsx': ['prettier'] 
\ }
let g:ale_fix_on_save = 1

colorscheme night-owl


