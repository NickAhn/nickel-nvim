-- init.lua: contains all basic plugins
return {
    -- indent lines
    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

    -- statusline
    { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } }, 

    {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }
}

