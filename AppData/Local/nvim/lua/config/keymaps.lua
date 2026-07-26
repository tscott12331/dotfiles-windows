-- oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files'})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })

-- neotree
vim.keymap.set('n', '<leader>fd', '<Cmd>Neotree toggle<CR>')


-- kilo-code
vim.keymap.set('n', '<leader>ko', '<Cmd>KiloCodeOpen<CR>', { desc = 'Open sidebar' })
vim.keymap.set('n', '<leader>kc', '<Cmd>KiloCodeClose<CR>', { desc = 'Close sidebar' })
vim.keymap.set('n', '<leader>kt', '<Cmd>KiloCodeToggle<CR>', { desc = 'Toggle sidebar' })
vim.keymap.set('n', '<leader>ki', '<Cmd>KiloCodeInstall<CR>', { desc = 'Install/Update CLI' })
vim.keymap.set('n', '<leader>ks', '<Cmd>KiloCodeCheck<CR>', { desc = 'Check status' })
