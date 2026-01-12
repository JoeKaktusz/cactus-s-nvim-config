return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
  },
  config = function()
    local lspconfig = require('lspconfig')
    local configs = require('lspconfig.configs')
    
    require('mason').setup()
    
    require('mason-lspconfig').setup({
      ensure_installed = { 
        'lua_ls',
        'pyright',
        'ts_ls',
        'clangd',
        'rust_analyzer',
        'lemminx', -- XML LSP as fallback for SAPUI5
      },
      automatic_installation = true,
      handlers = {
        function(server_name)
          lspconfig[server_name].setup({})
        end,
      },
    })
    
    -- UI5 Language Server (manual setup, not in Mason)
    if not configs.ui5_ls then
      configs.ui5_ls = {
        default_config = {
          cmd = {'ui5-language-server', '--stdio'},
          filetypes = {'xml'},
          root_dir = lspconfig.util.root_pattern('ui5.yaml', 'package.json', '.git'),
          settings = {},
        },
      }
    end
    
    lspconfig.ui5_ls.setup({})
  end
}

