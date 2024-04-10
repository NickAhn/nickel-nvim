# Nickel's Neovim Configs
Redoing my neovim configs from scratch.

## Plugins
1. rose pine colorscheme
2. telescope.nvim
3. treesitter
4. vim-tmux-navigator
5. [lualine](https://github.com/nvim-lualine/lualine.nvim)
6. [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)

## Keybinds
* `<leader>`: space
* `<l>pv`: Explorer

### Telescope
* `<C-f>`: search file
* `<C-g>`: search only staged files in git repository
* `<l>pg`: search file using grep on word

## To add:
### Plugins
* tmux
* vim-fugitive
* nerdtree
* mbbill/undotree

### Other
* Add nvim keybinding <C-\\> to create a new tmux vertical pane in current directory
* tmux: add `tmux save-buffer - | xclip -selection clipboard` for when copying
