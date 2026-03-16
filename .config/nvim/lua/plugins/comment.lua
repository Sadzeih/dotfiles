return {
  'numToStr/Comment.nvim',
  lazy = true,
  event = 'VeryLazy',
  config = function()
    require('Comment').setup {
      toggler = {
        line = '<leader>/',
      },
      opleader = {
        line = '<leader>/',
      },
    }
  end,
}
