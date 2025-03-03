return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'leoluz/nvim-dap-go',
    'rcarriga/nvim-dap-ui',
    'nvim-neotest/nvim-nio',
    'theHamsta/nvim-dap-virtual-text',
  },
  config = function()
    local dap = require 'dap'
    local ui = require 'dapui'
    require('dapui').setup()
    require('dap-go').setup {
      dap_configurations = {
        {
          type = 'go',
          name = 'Debug main.go',
          request = 'launch',
          program = '${workspaceFolder}/main.go',
        },
      },
    }

    require('nvim-dap-virtual-text').setup {}

    vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint, { desc = 'DAP: Toggle [B]reakpoint' })
    vim.keymap.set('n', '<leader>gb', dap.run_to_cursor, { desc = 'DAP: Run to cursor' })
    vim.keymap.set('n', '<leader>?', function()
      require('dapui').eval(nil, { enter = true })
    end, { desc = 'DAP: Eval var under cursor' })

    vim.keymap.set('n', '<leader>dc', dap.continue, { desc = '[D]AP: [C]ontinue' })
    vim.keymap.set('n', '<leader>di', dap.step_into, { desc = '[D]AP: Step [I]nto' })
    vim.keymap.set('n', '<leader>do', dap.step_over, { desc = '[D]AP: Step [O]ver' })
    vim.keymap.set('n', '<leader>dt', dap.step_out, { desc = '[D]AP: Step Ou[t]' })
    vim.keymap.set('n', '<leader>db', dap.step_back, { desc = '[D]AP: Step [B]ack' })
    vim.keymap.set('n', '<leader>dr', dap.restart, { desc = '[D]AP: [R]estart' })
    vim.keymap.set('n', '<leader>ds', dap.terminate, { desc = '[D]AP: [S]top' })

    dap.listeners.before.attach.dapui_config = function()
      ui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      ui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      ui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      ui.close()
    end
  end,
}
