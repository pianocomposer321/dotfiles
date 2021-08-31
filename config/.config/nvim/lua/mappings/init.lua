vim.g.mapleader = " "

local map = require("functions").map

map("n", "<C-l>", "<CMD>noh<CR>")

map("n", "<LEADER>w", "<C-w>")
map("n", "<LEADER>v", "<CMD>vs<CR>")
map("n", "<LEADER>s", "<CMD>sp<CR>")
map("n", "<LEADER>t", "<CMD>tabnew<CR>")

map("n", "Y", "y$")

map("n", "]b", "<CMD>bn<CR>")
map("n", "[b", "<CMD>bp<CR>")

-- require("mappings/nvimtree")
-- require("mappings/consolation")
-- require("mappings/floaterm")
-- require("mappings/neoterm")
