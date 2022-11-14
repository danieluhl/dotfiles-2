local inoremap = require("duhl.keymap").inoremap
local nnoremap = require("duhl.keymap").nnoremap
local xnoremap = require("duhl.keymap").xnoremap
local vnoremap = require("duhl.keymap").vnoremap

-- Saving and quitting
local nmaps = {

	-- Quickfix lists
	-- note<cmd> <C-q> from telescope search puts in quickfix list
	["<leader>co"] = "<cmd>copen<CR>",
	["<leader>cl"] = "<cmd>ccl<CR>",
	["<leader>n"] = "<cmd>cn<CR>",
	["<leader>p"] = "<cmd>cp<CR>",

	-- Error Navigation
	-- ["<leader>en"] = "<cmd>lnext<CR>",
	-- ["<leader>ep"] = "<cmd>lprev<CR>",
	-- ["<leader>eo"] = "<cmd>lopen<CR>",
	-- ["<leader>ec"] = "<cmd>lclose<CR>",

	-- Save and Quit
	["<leader>w"] = "<cmd>w<CR>",
	["<leader>q"] = "<cmd>q<CR>",
	["<leader>!"] = "<cmd>q!<CR>",

	-- nvim tree stuff
	["<leader>e"] = "<cmd>NvimTreeFocus<cr>",
	["<S-e>"] = "<cmd>NvimTreeToggle<cr>",
	["<leader>mn"] = require("nvim-tree.api").marks.navigate.next,
	["<leader>mp"] = require("nvim-tree.api").marks.navigate.previous,
	["<leader>mv"] = require("nvim-tree.api").marks.bulk.move,
	["<leader>ml"] = require("nvim-tree.api").marks.list,

	-- Search under cursor
	["<leader>s"] = ":%s/",
	["<leader>S"] = ":%s/<C-r><C-w>//g<C-f>hi<C-c>",

	-- BUFFERS
	-- Search in open buffers
	["<leader>b"] = "<cmd>Telescope buffers<CR>",
	-- Delete all buffers but the current one
	["<leader>bd"] = "<cmd>%bd<bar>e#<bar>bd#<CR>",
	-- cycle through buffers
	["<S-l>"] = "<cmd>bnext<CR>",
	["<S-h>"] = "<cmd>bprevious<CR>",
	["<C-l>"] = "<C-w>l",
	["<C-h>"] = "<C-w>h",
	["<C-k>"] = "<C-w>k",
	["<C-j>"] = "<C-w>j",
	-- window mgmt
	-- ["<leader>wv"] = "<C-w>v<C-w>l",
	-- ["<leader>ws"] = "<C-w>s<C-w>j",
	-- ["<leader>wo"] = "<C-w><C-o>",

	-- print from 0 register
	["<leader>0"] = '"0p',

	-- Movements
	["<S-k>"] = "5k",

	-- Moving Lines
	["<M-j>"] = "<cmd>m .+1<CR>",
	["<M-k>"] = "<cmd>m .-2<CR>",
	["<C-e>"] = "5<C-e>",
	["<C-y>"] = "5<C-y>",

	-- Paste in quotes
	["<leader>'"] = "i''<esc>P",

	-- Select entire document
	["<leader>gg"] = "gg<S-v>G",
	-- Wrap only lines longer than 80ch
	["<leader>gq"] = "<cmd>g/./ normal gqq<CR>",
	["<leader>y"] = 'viw"+y',

	-- Foldings (use za to fold/unfold)
	["zz"] = "<cmd>set foldmethod=syntax<CR>",

	-- github
	["<leader>gh"] = "<cmd>OpenGithubFile<CR>",
	-- open link in browser
	["<leader>gl"] = "<Plug>(openbrowser-open)",

	-- telescope
	["<C-p>"] = "<cmd>Telescope find_files<CR>",
	["<leader>h"] = "<cmd>Telescope find_files hidden=true<CR>",
	["<C-f>"] = "<cmd>Telescope live_grep<CR>",
	-- ["<leader>fg"] = "<cmd>Telescope git_files<CR>",
	-- ["<leader>ff"] = "<cmd>Telescope find_files<CR>",
	-- ["<leader>fl"] = "<cmd>Telescope live_grep<CR>",
	["<leader>ts"] = "<cmd>Telescope grep_string<CR>",
	-- ["<leader>fh"] = "<cmd>Telescope search_history<CR>",
	["<leader>fo"] = "<cmd>Telescope oldfiles<CR>",

	-- Tabularize - for formatting markdown tables
	["<Leader>a="] = "<cmd>Tabularize /<bar><CR>",

	-- Format dat code (for lsp stuff see lspconfig.lua)
	["<leader>ff"] = ":lua vim.lsp.buf.format({}, 10000)<CR>",
	["<leader>ca"] = ":lua vim.lsp.buf.code_action()<CR>",

	-- Marks
	["<leader>m"] = "mA",
	["<leader>a"] = "`A",
	["<leader>t"] = "`A",

	-- Seamlessly treat visual lines as actual lines when moving around.
	["j"] = "gj",
	["k"] = "gk",
	["<Down>"] = "gj",
	["<Up>"] = "gk",

	-- resize windows
	["<C-Up>"] = ":resize +2<CR>",
	["<C-Down>"] = ":resize -2<CR>",
	["<C-Right>"] = ":vertical resize -2<CR>",
	["<C-Left>"] = ":vertical resize +2<CR>",
}

local vmaps = {
	-- Move 1 more lines up or down in normal and visual selection modes.
	["<C-k>"] = ":m .-2<CR>==",
	["<C-j>"] = ":m .+1<CR>==",
	["<C-Up>"] = ":m '<-2<CR>gv=gv",
	["<C-Down>"] = ":m '>+1<CR>gv=gv",

	["<S-j>"] = "5j",
	["<S-k>"] = "5k",
	["<Leader>a="] = "<cmd>Tabularize /<bar><CR>",
}

local imaps = {
	-- Insert Mode Edits
	["<C-d>"] = "<del>",
	["<M-h>"] = "<esc>bi",
	["<M-j>"] = "<Down>",
	["<M-k>"] = "<Up>",
	["<M-l>"] = "<esc>ea",
	["<M-BS>"] = "<C-w>",
	["<M-Del>"] = "<C-w>",

	-- ["<Down>"] = "<C-o>gj",
	-- ["<Up>"] = "<C-o>gk",
}

local xmaps = {
	-- fix shift-a for visual-block select
	["A"] = "$A",
	-- Copy visual selection to clipboard
	["<leader>y"] = '"+y',
	["<leader>p"] = '"_dP',
}

for k, v in pairs(imaps) do
	inoremap(k, v)
end

for k, v in pairs(xmaps) do
	xnoremap(k, v)
end

for k, v in pairs(nmaps) do
	nnoremap(k, v)
end

for k, v in pairs(vmaps) do
	vnoremap(k, v)
end
