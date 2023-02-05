-- Set leader
vim.g.mapleader = " "

-- Don't yank with x
vim.keymap.set('n', 'x', '"_x')

-- Increment/decrement with +/-
vim.keymap.set('n', '+', '<C-a>')
vim.keymap.set('n', '-', '<C-x>')

-- Word wrap
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('n', 'j', 'gj')

-- Split window
vim.keymap.set('n', 'ss', '<C-w>v')

vim.keymap.set('n', 'sh', '<C-w>h')
vim.keymap.set('n', 'sj', '<C-w>j')
vim.keymap.set('n', 'sk', '<C-w>k')
vim.keymap.set('n', 'sl', '<C-w>l')

-- Netrw
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
