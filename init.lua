local vim = vim
local Plug = vim.fn["plug#"]

vim.call("plug#begin")

Plug('catppuccin/nvim', { ['as'] = 'catppuccin' })
Plug('goolord/alpha-nvim')
Plug('nvim-lualine/lualine.nvim')
Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-tree/nvim-tree.lua')
Plug('folke/which-key.nvim')
Plug('lewis6991/gitsigns.nvim')
Plug('romgrk/barbar.nvim')
Plug('nvim-treesitter/nvim-treesitter')
Plug('ibhagwan/fzf-lua')
Plug('numToStr/FTerm.nvim')

vim.call("plug#end")


require("config.theme")
require("config.mappings")
require("config.options")

require("plugins.catppuccin")
require("plugins.lualine")
require("plugins.nvim-tree")
require("plugins.alpha")
require("plugins.whichkey")
require("plugins.barbar")
require("plugins.fterm")
require("plugins.fzf")
require("plugins.gitsigns")
require("plugins.treesitter")

load_theme()
