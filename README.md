# dark-forest

A dark color scheme for Neovim derived from blue-moon

## Notices

- Support for [treesitter](https://github.com/nvim-treesitter/nvim-treesitter) and related plugins.
- Consider using [vim-polyglot](https://github.com/sheerun/vim-polyglot) if you are not using treesitter.

## Installation

Using packer:
```lua
use {
  "mdcoury/dark-forest.nvim",
  config = function()
    vim.opt.termguicolors = true
    vim.cmd "colorscheme dark-forest"
  end
}
```
