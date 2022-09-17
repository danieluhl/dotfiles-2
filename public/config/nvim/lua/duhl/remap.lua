local nnoremap= require("duhl.keymap").nnoremap
local inoremap= require("duhl.keymap").inoremap
local xnoremap= require("duhl.keymap").xnoremap
local vnoremap= require("duhl.keymap").vnoremap

-- Quickfix lists
-- note<cmd> <C-q> from telescope search puts in quickfix list
nnoremap("<leader>co", "<cmd>copen<CR>")
nnoremap("<leader>cl", "<cmd>ccl<CR>")
nnoremap("<leader>n", "<cmd>cn<CR>")
nnoremap("<leader>p", "<cmd>cp<CR>")

-- Error Navigation
--nnoremap("<leader>en", "<cmd>lnext<CR>")
--nnoremap("<leader>ep", "<cmd>lprev<CR>")
--nnoremap("<leader>eo", "<cmd>lopen<CR>")
--nnoremap("<leader>ec", "<cmd>lclose<CR>")

-- Auto insert close brace
-- inoremap("(;", "(<CR>);<C-c>O")
-- inoremap("(,", "(<CR>),<C-c>O")
-- inoremap("<leader>{", "{<CR>}<C-c>O")
-- inoremap("{,", "{<CR>},<C-c>O")
-- inoremap("[;", "[<CR>];<C-c>O")
-- inoremap("[,", "[<CR>],<C-c>O")

-- Saving and quitting
nnoremap("<leader>w", "<cmd>w<CR>")
nnoremap("<leader>q", "<cmd>q<CR>")

-- window mgmt
nnoremap("<C-j>", "<C-W>j")
nnoremap("<C-k>", "<C-W>k")
nnoremap("<C-h>", "<C-W>h")
nnoremap("<C-l>", "<C-W>l")
-- nnoremap("<leader>wv", "<C-w>v<C-w>l")
-- nnoremap("<leader>ws", "<C-w>s<C-w>j")
-- nnoremap("<leader>wo", "<C-w><C-o>")
nnoremap("<leader>e", "<cmd>E<CR>")
-- close the current buffer
nnoremap("<leader>s", "<cmd>bd<CR>")

-- BUFFERS
-- Search in open buffers
nnoremap("<leader>b", "<cmd>Telescope buffers<CR>")
-- Delete all buffers but the current one
nnoremap("<leader>o", "<cmd>%bd<bar>e#<bar>bd#<CR>")
nnoremap("<C-b>", "<cmd>bprev<CR>")
nnoremap("<C-n>", "<cmd>bnext<CR>")

-- print from 0 register
nnoremap("<leader>0", "\"0p")
xnoremap("<leader>p", "\"_dP")

-- Movements
vnoremap("<S-j>", "5j")
vnoremap("<S-j>", "5j")
nnoremap("<S-k>", "5k")
nnoremap("<S-k>", "5k")

-- Moving Lines
nnoremap("<M-j>", "<cmd>m .+1<CR>")
nnoremap("<M-k>", "<cmd>m .-2<CR>")
nnoremap("<C-e>", "5<C-e>")
nnoremap("<C-y>", "5<C-y>")

-- Insert Mode Edits
inoremap("<C-d>", "<del>")
inoremap("<M-h>", "<esc>bi")
inoremap("<M-j>", "<Down>")
inoremap("<M-k>", "<Up>")
inoremap("<M-l>", "<esc>ea")
inoremap("<M-BS>", "<C-w>")
inoremap("<M-Del>", "<C-w>")
-- Paste in quotes
nnoremap("<leader>'", "i''<esc>P")

-- Select entire document
nnoremap("<leader>gg", "gg<S-v>G")
-- Wrap only lines longer than 80ch
nnoremap("<leader>gq", "<cmd>g/./ normal gqq<CR>")
-- Copy visual selection to clipboard
xnoremap("<leader>y", "\"+y")
nnoremap("<leader>y", "viw\"+y")
-- fix shift-a for visual-block select
xnoremap("A", "$A")

-- Foldings (use za to fold/unfold)
nnoremap("zz", "<cmd>set foldmethod=syntax<CR>")

-- github
nnoremap("<leader>gh", "<cmd>OpenGithubFile<CR>")

-- telescope
nnoremap("<C-p>", "<cmd>Telescope find_files<CR>")
nnoremap("<C-h>", "<cmd>Telescope find_files hidden=true<CR>")
nnoremap("<C-f>", "<cmd>Telescope live_grep<CR>")
-- nnoremap("<leader>fg", "<cmd>Telescope git_files<CR>")
-- nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>")
-- nnoremap("<leader>fl", "<cmd>Telescope live_grep<CR>")
nnoremap("<leader>ts", "<cmd>Telescope grep_string<CR>")
-- nnoremap("<leader>fh", "<cmd>Telescope search_history<CR>")
nnoremap("<leader>fo", "<cmd>Telescope oldfiles<CR>")

-- Tabularize - for formatting markdown tables
nnoremap("<Leader>a=", "<cmd>Tabularize /<bar><CR>")
vnoremap("<Leader>a=", "<cmd>Tabularize /<bar><CR>")

-- Move 1 more lines up or down in normal and visual selection modes.
nnoremap("<C-k>", ":m .-2<CR>==")
nnoremap("<C-j>", ":m .+1<CR>==")
vnoremap("<C-k>", ":m '<-2<CR>gv=gv")
vnoremap("<C-j>", ":m '>+1<CR>gv=gv")
nnoremap("<C-Up>", ":m .-2<CR>==")
nnoremap("<C-Down>", ":m .+1<CR>==")
vnoremap("<C-Up>", ":m '<-2<CR>gv=gv")
vnoremap("<C-Down>", ":m '>+1<CR>gv=gv")


-- Seamlessly treat visual lines as actual lines when moving around.
-- noremap("j", "gj")
-- noremap("k", "gk")
-- noremap("<Down>", "gj")
-- noremap("<Up>", "gk")
-- inoremap("<Down>", "<C-o>gj")
-- inoremap("<Up>", "<C-o>gk")
  
