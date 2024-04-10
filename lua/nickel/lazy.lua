local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
	-- or                              , branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
    -- colorscheme: soho vibes
	{ "rose-pine/neovim", as = "rose-pine" },
    -- treesitter
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    -- tmux navigation
    { "alexghergh/nvim-tmux-navigation" },
    -- statusline
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    -- indent lines
    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
    { 'RRethy/vim-illuminate' }

    -- which key
    --{
    --  "folke/which-key.nvim",
    --  event = "VeryLazy",
    --  init = function()
    --    vim.o.timeout = true
    --    vim.o.timeoutlen = 300
    --  end,
    --  opts = {
    --    -- your configuration comes here
    --    -- or leave it empty to use the default settings
    --    -- refer to the configuration section below
    --  }
    --}
}
local opts = {}

require("lazy").setup(plugins, opts)
require('lualine').setup()
vim.cmd("colorscheme rose-pine")
