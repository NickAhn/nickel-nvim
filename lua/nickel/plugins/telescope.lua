return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    config = function()
        local builtin = require('telescope.builtin')

        -- project find: look for all files --
        -- vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set('n', '<C-f>', builtin.find_files, {})
        -- only look for git files --
        vim.keymap.set('n', '<C-g>', builtin.git_files, {})
        -- project search: grep in files--
        vim.keymap.set('n', '<leader>pg', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
    end
}
