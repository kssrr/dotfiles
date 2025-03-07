vim.cmd("set notermguicolors")
vim.cmd("set number relativenumber")
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- Plugins
local Plug = vim.fn['plug#']

vim.call('plug#begin')
--Plug 'Mofiqul/dracula.nvim'
Plug 'navarasu/onedark.nvim'
--Plug('catppuccin/nvim', { ['as'] = 'catppuccin' })
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'windwp/nvim-autopairs'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
vim.call('plug#end')

require('lualine').setup {
    options = { 
        icons_enabled = true,
        theme = 'onedark'
    }
}

require("nvim-autopairs").setup {}

--require("catppuccin").setup({
--    no_italic = true
--})

require("telescope").setup {}
local actions = require('telescope.actions')
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })

require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "cpp", "lua", "vim", "python", "r", "vimdoc", "query", "markdown", "markdown_inline" },
    auto_install = true,
    highlight = {
        enable = true
    }
}


vim.cmd.colorscheme "onedark"
