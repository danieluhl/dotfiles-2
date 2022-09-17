vim.opt.guicursor = ""

vim.opt.nu = true

-- ****************
-- SETTINGS
-- ****************

-- Not sure what this does
--vim.opt.path+=**

-- Nice menu when typing `:find *.py`
vim.opt.wildmode={"longest","list","full"}
vim.opt.wildmenu = true

-- Ignore files
--vim.opt.wildignore:append{*_build/*
--vim.opt.wildignore:append{**/dist/*
--vim.opt.wildignore:append{**/coverage/*
--vim.opt.wildignore:append{**/node_modules/*
--vim.opt.wildignore:append{**/ios/*
--vim.opt.wildignore:append{**/.git/*

-- Colors
vim.opt.termguicolors = true

-- Other Settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop=2
vim.opt.shiftwidth=2
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.scrolloff=8
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.undofile = true
vim.opt.undodir = os.getenv( "HOME" ) .. "/.local/share/nvim/undo"
vim.opt.swapfile = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.laststatus=2
vim.opt.incsearch = true
vim.opt.backup = false
vim.opt.errorbells = false
vim.opt.textwidth=80
vim.opt.wrapmargin=2
vim.opt.wrap = false
vim.opt.signcolumn="number"
vim.opt.backspace={"indent","eol","start"}
vim.opt.pyxversion=3
vim.opt.compatible = false
vim.opt.cmdheight=2
vim.opt.updatetime=300
vim.opt.shortmess:append{c = true}

-- JavaScript
vim.opt.conceallevel = 0
vim.opt.compatible = false



