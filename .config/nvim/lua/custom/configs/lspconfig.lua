local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"

-- require('lspconfig.configs').sibros_pulumi_lsp = {
--   default_config = {
--     cmd = {"/Users/aguerville/go/bin/sibros-pulumi-lsp"},
--     filetypes = {'yaml'},
--     root_dir = lspconfig.util.root_pattern("go.mod"),
--     settings = {},
--   }
-- }

local servers = { "terraformls", "gopls" }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_init = on_init,
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
