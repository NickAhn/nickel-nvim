return {
    -- indent lines
    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

    -- statusline
    { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } }, 
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.6',
        dependencies = {
            'nvim-lua/plenary.nvim'
        },
    }
}

