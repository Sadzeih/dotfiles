return { -- Autocompletion
  'saghen/blink.cmp',
  version = '1.*',
  dependencies = {
    'L3MON4D3/LuaSnip',
  },
  build = 'cargo build --release',
  opts = {
    keymap = {
      preset = 'super-tab',
    },
    completion = {
      documentation = { auto_show = true },
    },
  },
}
