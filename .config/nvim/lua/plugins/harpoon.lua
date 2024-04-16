return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon.setup {}

    vim.keymap.set('n', '<leader>pa', function()
      harpoon:list():add()
    end, { desc = 'Har[p]oon: [A]dd file' })
    vim.keymap.set('n', '<leader>pl', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Har[p]oon: [L]ist files' })

    vim.keymap.set('n', '<leader>p1', function()
      harpoon:list():select(1)
    end, { desc = 'Har[p]oon: Select item [1]' })
    vim.keymap.set('n', '<leader>p2', function()
      harpoon:list():select(2)
    end, { desc = 'Har[p]oon: Select item [2]' })
    vim.keymap.set('n', '<leader>p3', function()
      harpoon:list():select(3)
    end, { desc = 'Har[p]oon: Select item [3]' })
    vim.keymap.set('n', '<leader>p4', function()
      harpoon:list():select(4)
    end, { desc = 'Har[p]oon: Select item [4]' })
    vim.keymap.set('n', '<leader>p5', function()
      harpoon:list():select(5)
    end, { desc = 'Har[p]oon: Select item [5]' })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<C-P>', function()
      harpoon:list():prev()
    end, { desc = 'Harpoon: Select [P]revious File' })

    vim.keymap.set('n', '<C-N>', function()
      harpoon:list():next()
    end, { desc = 'Harpoon: Select [N] File' })
  end,
}
