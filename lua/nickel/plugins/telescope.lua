return {
    'nvim-telescope/telescope.nvim',
    branch = "0.1.x",
    -- tag = '0.1.6',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { "nvim-telescope/telescope-fzf-native.nvim", build="make" },
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local telescope = require("telescope")
        local builtin = require('telescope.builtin')

        -- project find: look for all files --
        vim.keymap.set('n', '<C-f>', builtin.find_files, {})
        -- only look for git files --
        vim.keymap.set('n', '<C-g>', builtin.git_files, {})
        -- project search: grep in files--
        vim.keymap.set('n', '<leader>pg', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)

        local actions = require("telescope.actions")
        telescope.setup({
            defaults = {
                path_display = { "smart" },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                        ["<C-j>"] = actions.move_selection_next, -- move to next result
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                    },
                },
            },
        })

        telescope.load_extension("fzf");
    end
}
