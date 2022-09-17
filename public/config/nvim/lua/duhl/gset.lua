vim.g.mapleader = ","

--Don't need the highlight yank plugin
local yankGrp = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  command = "silent! lua vim.highlight.on_yank()",
  group = yankGrp,
})

-- ALE plugin settings
vim.g.ale_linters = {
    typescript = {'eslint', 'tslint'},
    ruby = {'rubocop'},
    jsx = {'stylelint', 'eslint', 'tslint'},
}

vim.g.ale_fixers = {
   ['*'] = {'remove_trailing_lines', 'trim_whitespace'},
  javascript = {'prettier', 'eslint'}
}


-- deoplete does autocomplete with ale
vim.g.deoplete = {enable_at_startup = 1}
