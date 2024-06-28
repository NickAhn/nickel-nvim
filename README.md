# Nickel's Neovim Configs
Redoing my neovim configs from scratch.

## Plugins
1. rose pine colorscheme
2. telescope.nvim
3. treesitter
4. vim-tmux-navigator
5. [lualine](https://github.com/nvim-lualine/lualine.nvim)
6. [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
7. [vim-illuminate](https://github.com/RRethy/vim-illuminate)
8. nvim-cmp

## Keybinds
* `<leader>`: space
* `<l>pv`: Explorer

### Telescope
* `<C-f>`: search file
* `<C-g>`: search only staged files in git repository
* `<C-j>`: prev item (while in insert mode)
* `<C-k>`: next item (while in insert mode)
* `<l>pg`: search file using grep on word

### nvim-mp
* `C-k`: next completion suggestion
* `C-j`: prev completion suggestion
* `C-f`: Scroll file preview down ("Forward")
* `C-b`: Scroll file preview up ("Backwards")
* `C-e`: close suggestions
* `C-<leader>`: open suggestion

## To add:
### Plugins
* tmux
* vim-fugitive
* nerdtree
* mbbill/undotree

### Other
* Add nvim keybinding <C-\\> to create a new tmux vertical pane in current directory
* tmux: add `tmux save-buffer - | xclip -selection clipboard` for when copying
* [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
