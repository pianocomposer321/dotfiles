local map = require("functions").map

map("n", "<LEADER><CR>", "<CMD>lua require('plugins/yabs').build()<CR>")
