require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Move lines in visual mode
map('v', 'J', ":m '>+1<cr>gv=gv", { desc = 'Move selected down' })
map('v', 'K', ":m '<-2<cr>gv=gv", { desc = 'Move selected up' })

-- Search within visual selection
map('x', 'z/', "<C-\\><C-n>`</\\%V", { desc = 'Search forward within visual selection' })
map('x', 'z?', "<C-\\><C-n>`>?\\%V", { desc = 'Search backward within visual selection' })

-- Cancel search highlight
map('n', '<Esc>', '<cmd>nohlsearch<cr>', { desc = 'Cancel active highlight' })

-- Join line without moving cursor
map('n', 'J', 'mzJ`z', { desc = 'Join line' })

-- Keep cursor centered on movement
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')

-- Paste over selection without yanking it
map('x', '<leader>p', '"_dP', { desc = 'Paste (keep paste data)' })

-- Exit terminal mode
map('t', '<C-Space>', [[<C-\><C-n>:q<CR>]], { desc = 'Exit terminal mode' })
