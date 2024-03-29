vim.g.mapleader = ","

--Don't need the highlight yank plugin
local yankGrp = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  command = "silent! lua vim.highlight.on_yank()",
  group = yankGrp,
})


vim.cmd [[
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<M-d>'           " replace C-n
let g:VM_maps['Find Subword Under'] = '<M-d>'           " replace visual C-n

]]

