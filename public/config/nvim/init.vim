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

" Autocmd
autocmd Filetype python map <buffer> <leader>go :w<cr>:exec '!python3' shellescape(@%, 1)<cr>
autocmd BufEnter *.js iabbr cl console.log(');<C-c>2hi
autocmd BufEnter *.js iabbr cll console.log(', f);<C-c>5hi

" Saving and quitting
nnoremap <leader>w <cmd>w<cr>
nnoremap <leader>wq <cmd>wq<cr>
nnoremap <leader>q <cmd>q<cr>

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
set signcolumn=number
set backspace=indent,eol,start
" set comments=b:>,b:*,b:+,fb:-
let g:vim_markdown_auto_insert_bullets = 0
" Give more space for displaying messages.
set cmdheight=2
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" Set linebreak with :Wrap
command! -nargs=* Wrap set wrap linebreak nolist

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

" Moving Lines
nnoremap <A-j> :m .+1<cr>
nnoremap <A-k> <cmd>m .-1<cr>
nnoremap <C-e> 5<C-e>
nnoremap <C-y> 5<C-y>

" insert mode mappings
inoremap <C-d> <del>
inoremap <C-j> <C-W>j
inoremap <C-k> <C-W>k
inoremap <C-h> <C-W>h
inoremap <C-l> <C-W>l

" Visual Stuffs
" Select entire document
vnoremap gg <esc>gg<S-v>G
" Wrap only lines longer than 80ch
nnoremap <leader>gq <cmd>g/./ normal gqq<cr>
" Copy visual selection to clipboard
xnoremap <leader>y "+y
" fix shift-a for visual-block select
xnoremap A $A

" Foldings (use za to fold/unfold)
nnoremap zz :set foldmethod=syntax<cr>


call plug#begin(stdpath('data') . '/plugged')

  " from helloitsjoe
  Plug 'airblade/vim-gitgutter'
  Plug 'sheerun/vim-polyglot'
  Plug 'tpope/vim-fugitive'
  Plug 'godlygeek/tabular'

  " LSP (language server) business
  Plug 'neovim/nvim-lspconfig'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " telescope for file nav
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'

  " Neovim Tree shitter
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-treesitter/playground'

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
nnoremap <leader>fh <cmd>Telescope search_history<cr>
nnoremap <leader>fo <cmd>Telescope oldfiles<cr>

" language specifics (via vim-polyglot)
" JavaScript
set conceallevel=1

colorscheme night-owl


" coc language plugins
" CocInstall coc-tsserver coc-json coc-html coc-css coc-jedi

" coc (code completion) plugin
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')
nnoremap <leader>f :Format<cr>

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Use K to show documentation in preview window.
nnoremap <silent> <leader>k :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

