return {
  'ibhagwan/fzf-lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('fzf-lua').setup { 'telescope', 'fzf-native', winopts = {} }
    local builtin = require 'fzf-lua'
    vim.keymap.set('n', '<leader>fh', builtin.helptags, { desc = '[F]ind [H]elp' })
    vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = '[F]ind [K]eymaps' })
    vim.keymap.set('n', '<leader>ff', builtin.files, { desc = '[F]ind [F]iles' })
    vim.keymap.set('n', '<leader>fa', function()
      builtin.files {
        hidden = true,
        no_ignore = true,
      }
    end, { desc = '[F]ind [A]ll Files' })
    vim.keymap.set('n', '<leader>fs', builtin.builtin, { desc = '[F]ind [S]elect Telescope' })
    vim.keymap.set('n', '<leader>fg', function()
      builtin.live_grep {
        additional_args = { '--hidden', '--no-ignore' },
      }
    end, { desc = '[F]ind by [G]rep' })
    vim.keymap.set('n', '<leader>fr', builtin.resume, { desc = '[F]ind [R]esume' })
    vim.keymap.set('n', '<leader>f.', builtin.oldfiles, { desc = '[F]ind Recent Files ("." for repeat)' })
    vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })
    vim.keymap.set('n', '<leader>fb', builtin.lgrep_curbuf, { desc = '[F]ind in current [B]uffer' })
    vim.keymap.set('n', '<leader>fo', function()
      builtin.live_grep {
        grep_open_files = true,
        prompt_title = 'Live Grep in Open Files',
      }
    end, { desc = '[F]ind in [O]pen Files' })
    vim.keymap.set('n', '<leader>fn', function()
      builtin.files { cwd = vim.fn.stdpath 'config' }
    end, { desc = '[F]ind [N]eovim files' })
  end,
}
