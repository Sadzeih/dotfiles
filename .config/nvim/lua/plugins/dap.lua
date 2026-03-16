return {
  'mfussenegger/nvim-dap',
  lazy = true,
  cmd = { 'DapContinue', 'DapToggleBreakpoint', 'DapStepInto', 'DapStepOver' },
  keys = {
    { '<leader>b', '<cmd>DapToggleBreakpoint<cr>', desc = 'DAP: Toggle [B]reakpoint' },
    { '<leader>gb', '<cmd>DapRunToCursor<cr>', desc = 'DAP: Run to cursor' },
    { '<leader>?', function() require('dapui').eval(nil, { enter = true }) end, desc = 'DAP: Eval var under cursor' },
    { '<leader>dc', '<cmd>DapContinue<cr>', desc = '[D]AP: [C]ontinue' },
    { '<leader>di', '<cmd>DapStepInto<cr>', desc = '[D]AP: Step [I]nto' },
    { '<leader>do', '<cmd>DapStepOver<cr>', desc = '[D]AP: Step [O]ver' },
    { '<leader>dt', '<cmd>DapStepOut<cr>', desc = '[D]AP: Step Ou[t]' },
    { '<leader>db', '<cmd>DapStepBack<cr>', desc = '[D]AP: Step [B]ack' },
    { '<leader>dr', '<cmd>DapRestart<cr>', desc = '[D]AP: [R]estart' },
    { '<leader>ds', '<cmd>DapTerminate<cr>', desc = '[D]AP: [S]top' },
  },
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
