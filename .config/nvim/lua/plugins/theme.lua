return { -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  'rose-pine/neovim',
  name = 'rose-pine',
  -- 'folke/tokyonight.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  init = function()
    -- require('tokyonight').setup {
    --   style = 'night',
    --   dim_inactive = true,
    -- }
    -- vim.cmd.colorscheme 'tokyonight-night'
    -- -- exit if it can't be found
    require('rose-pine').setup {}
    vim.cmd.colorscheme 'rose-pine'
  end,
}
