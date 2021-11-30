lua <<EOF
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    virtual_text = {
      spacing = 4,
      prefix = ''
    }
  }
)


local on_attach = function(client,bufnr)
end

local cmp = require'cmp'
local lspconfig = require'lspconfig'


require'lspconfig'.pylsp.setup{on_attach = require'cmp'.on_attach}
require'lspconfig'.diagnosticls.setup{on_attach = require'cmp'.on_attach}
require'lspconfig'.vimls.setup{on_attach = require'cmp'.on_attach}
require'lspconfig'.sumneko_lua.setup{on_attach = require'cmp'.on_attach}

EOF
