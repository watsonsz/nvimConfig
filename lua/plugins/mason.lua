return
{
 -- {
  --  'OmniSharp/omnisharp-vim',
   --   config = function()
  --     vim.g.OmniSharp_server_sdio = 0
  --     vim.g.OmniSharp_translate_cygwin_wsl = 1
  --    end
  --},
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
        ensure_installed = {"lua_ls","csharp_ls","tinymist", "markdown_oxide", "qmlls"}
        })
      end
  },
  {
      "neovim/nvim-lspconfig",
     config = function()
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
      vim.lsp.enable('tinymist')
      vim.lsp.enable('lua_ls')
      vim.lsp.enable('csharp_ls')
      vim.lsp.enable('markdown_oxide')
      vim.lsp.enable('qmlls')
      vim.keymap.set('n', 'K', vim.lsp.buf.hover,{})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition,{})
      vim.keymap.set({'n','v'}, '<leader>ca', vim.lsp.buf.code_action,{})
      end
  }
}
