-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
local plugins = {
  {
    'williamboman/mason.nvim',
    opts = {
      ensure_installed = {
        'rust-analyzer',
      },
    },
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      require 'custom.configs.lspconfig'
    end,
  },
  {
    'rust-lang/rust.vim',
    ft = 'rust',
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
}

return plugins
