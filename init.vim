syntax enable
set termguicolors
set number
filetype off

" Source 
runtime plug.vim

" Colorscheme
colorscheme gruvbox

" Wiki
let g:vimwiki_list = [{'path': '~/Desktop/vimwiki',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
" Clipboard support
map <C-c> "+y

" Colorscheme
let g:gruvbox_transparent_bg = 1

" NVIM CMP CONFIG (READ README.md FOR MORE DETAILS)
lua <<EOF
  -- Setup nvim-cmp.
  local cmp = require'cmp'

  local lspkind = require'lspkind'
  cmp.setup {
	formatting = {
		format = lspkind.cmp_format({with_text = true, maxwidth = 50})
		}
	  }

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
         vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    mapping = {
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'ultisnips' }, -- For ultisnips users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['pylsp'].setup {
    capabilities = capabilities
  }
  
  require('lspconfig')['vimls'].setup{
	capabilities = capabilities
  }
EOF
