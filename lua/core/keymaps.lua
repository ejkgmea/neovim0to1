vim.g.mapleader = ","

-- emmet-vim
vim.g.user_emmet_leader_key = ","

local keymap = vim.keymap

-------- normal model ----------
keymap.set("n", "0", "^")
keymap.set("n", "<leader>w", ":w!<cr>")
keymap.set("n", "<leader>a", "daw")

keymap.set("n", "<c-j>", "<c-w>j")
keymap.set("n", "<c-k>", "<c-w>k")
keymap.set("n", "<c-h>", "<c-w>h")
keymap.set("n", "<c-l>", "<c-w>l")

keymap.set("n", "<c-n>", ":bnext<cr>")
keymap.set("n", "<c-p>", ":bprevious<cr>")
keymap.set("n", "<leader>bd", ":Bdelete<cr>") -- close current buffer window
keymap.set("n", "<leader>nh", ":nohl<cr>")

-------- insert model ----------
keymap.set("i", "jk", "<esc>")
keymap.set("i", "kj", "<esc>") -- macbook 键程太短，好容易按错

-------- plugin keymap ----------
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>")

