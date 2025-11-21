-- oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', function() builtin.find_files() end, {})

-- neotree
vim.keymap.set('n', '<leader>fd', '<Cmd>Neotree toggle<CR>')
