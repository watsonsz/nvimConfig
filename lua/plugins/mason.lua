return
{
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
        ensure_installed = {"lua_ls","csharp_ls", "markdown_oxide"}
        })
      end
  },
  {
      "neovim/nvim-lspconfig",
     config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.csharp_ls.setup({
        vim.lsp.buf.format{timeout = 2000}
        })
      lspconfig.markdown_oxide.setup({})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover,{})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition,{})
      vim.keymap.set({'n','v'}, '<leader>ca', vim.lsp.buf.code_action,{})
      end
  }
}
