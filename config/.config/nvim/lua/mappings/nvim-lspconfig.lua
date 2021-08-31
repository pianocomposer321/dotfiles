local map = require("functions").map

map("n", "gd", "<CMD>lua vim.lsp.buf.definition()<CR>")
map("n", "<LEADER>rn", "<CMD>lua vim.lsp.buf.rename()<CR>")
