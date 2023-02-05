local builtin = require('telescope.builtin')

local theme = {
    theme = 'dropdown',
    prompt_title = false,
    preview_title = false,
    borderchars = {
        { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
        prompt = {"─", "│", " ", "│", '┌', '┐', "│", "│"},
        results = {"─", "│", "─", "│", "├", "┤", "┘", "└"},
        preview = { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
    },
}

require('telescope').setup{
    pickers = {
        git_files = theme,
        live_grep = theme,
    }
}

vim.keymap.set('n', '<leader>ff', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
