local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end
map('n', '<S-t>', ':tabedit ')
map('n', 'H', ':tabprevious<CR>')
map('n', 'L', ':tabnext<CR>')
map('n', '<C-t>', ':NERDTreeToggle<CR>')
