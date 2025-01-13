vim.opt.signcolumn = 'yes'

local lsp = require('lspconfig').util.default_config
lsp.capabilities = vim.tbl_deep_extend(
  'force',
  lsp.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

require('lspconfig').clangd.setup({})
require('lspconfig').lua_ls.setup({})
require('lspconfig').jedi_language_server.setup{}

local cmp = require('cmp')

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
  },
  snippet = {
    expand = function(args)
      vim.snippet.expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({}),
})
