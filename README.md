# .NetVim
A neovim distribution designed around developing in .NET and C# code.

# Plugins
- Treesitter
- Telescope, Telescope-ui-select
- Nuget
- NoneLS
- NeoTree
- Mason, Mason-lspconfig, nvim-lspconfig
- Dashboard
- AutoComplete and Snippets via cmp-nvim-lsp, nvim-cmp, luasnip, and friendly snippets
- Using c_sharp and Omnisharp lsps
<!---
Still need to set up debugging and project creation
--->
# Installation
## Omnisharp
## Telescope Live Grep
- In order to get live grep working on windows, you will need to install 'ripgrep' onto your machine https://github.com/BurntSushi/ripgrep.
- You will need to install Omnisharp and in mason.lua, line 30, type the path to your Omnisharp.exe file. 

