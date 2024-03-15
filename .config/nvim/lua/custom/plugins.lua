local configs = require("plugins.configs.lspconfig")
local capabilities = configs.capabilities
local on_attach = configs.on_attach

local plugins = {
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    lazy=false,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
       require "plugins.configs.lspconfig"
       require "custom.configs.lspconfig"
    end,
    lazy=false,
  },
  {
    "ray-x/go.nvim",
    config = function ()
      require("go").setup({
      })
    end,
    lazy=false,
  },
  {
    "github/copilot.vim",
    lazy=false,
  },
}

return plugins
