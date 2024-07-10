return
{
  {
    'OmniSharp/omnisharp-vim',
      config = function()
       vim.g.OmniSharp_server_sdio = 1
       vim.g.OmniSharp_translate_cygwin_wsl = 1
      end
  },
  {
    "williamboman/mason.nvim",
      config = function()
    require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls","csharp_ls","omnisharp", "markdown_oxide"}
        })
      end
  },
  {
      "neovim/nvim-lspconfig",
     config = function()
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities
        })

      lspconfig.c_sharp.setup({
         vim.lsp.buf.format{timeout = 2000}, 
        capabilities = capabilities
        })
      lspconfig.omnisharp.setup({
        vim.lsp.buf.format{timeout = 2000},
        capabilities = capabilities
        })
      lspconfig.markdown_oxide.setup({
        capabilities = capabilities
        })

      vim.keymap.set('n', 'K', vim.lsp.buf.hover,{})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition,{})
      vim.keymap.set({'n','v'}, '<leader>ca', vim.lsp.buf.code_action,{})
      end
  }
}
