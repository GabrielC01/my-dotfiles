local map = vim.api.nvim_set_keymap

-- Default
map("n", "<S-t>", "<CMD>tabedit ", {})
map("n", "<S-h>", "<CMD>tabprevious<CR>", {})
map("n", "<S-l>", "<CMD>tabnext<CR>", {})
map("n", "<S-q>", "<CMD>tabclose<CR>", {})

-- Floaterm
map("n", "<C-t>", "<CMD>FloatermToggle<CR>", {})
map("t", "<C-t>", "<CMD>FloatermToggle<CR>", {})
map("n", "<C-h>", "<CMD>FloatermPrevious<CR>", {})
map("n", "<C-l>", "<CMD>FloatermNext<CR>", {})
map("n", "<C-j>", "<CMD>FloatermKill<CR>", {})
map("n", "<C-k>", "<CMD>FloatermNew<CR>", {})
