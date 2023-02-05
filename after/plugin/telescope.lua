local builtin = require('telescope.builtin')

require('telescope').setup{
    pickers = {
        git_files = {
            theme = 'dropdown',
        },
        live_grep = {
            theme = 'dropdown',
        }
    }
}

vim.keymap.set('n', '<leader>ff', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
