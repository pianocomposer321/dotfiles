vim.keymap.set("n", "<LEADER><CR>", function() require("orgmode").action("org_mappings.handle_return") end, { buffer = true })
vim.keymap.set("i", "<M-CR>", "<C-O><LEADER><CR>", { remap = true, buffer = true })
